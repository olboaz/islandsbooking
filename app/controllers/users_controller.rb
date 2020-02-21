class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @moderations = Booking.joins(:island).where("islands.user_id = ? AND bookings.status = ?", current_user, 'pending')
    authorize @user
  end
  def edit
    @user = User.find(params[:id])
    authorize @user
  end
  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update(user_params)
      flash[:alert] = "Your profile has been successfully updated"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :last_name, :first_name)
  end
end
