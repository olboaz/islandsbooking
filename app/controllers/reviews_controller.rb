class ReviewsController < ApplicationController
  def new
    @island = Island.find(params[:island_id])
    @review = Review.new
    authorize @review
  end

  def create
    @island = Island.find(params[:island_id])
    @review = Review.new(review_params)
    authorize @review
    @review.island = @island
    @user = current_user
    if @review.save
      redirect_to user_path(@user)
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
