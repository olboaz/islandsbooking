class IslandsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @islands = Island.where("name LIKE ?","%#{params[:name]}%")
  end

  def show
    @island = Island.find(params[:id])
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    if @island.save
      redirect_to island_path(@island)
    else
      render :new
    end
  end

  def edit
    @island = Island.find(params[:id])
  end

  def update
    @island = Island.find(params[:id])
    @island.update(params[:id])
    if @island.save
      redirect_to island_path(@island)
    else
      render :new
    end
  end

  def destroy
    @island = Island.find(params[:id])
    @island.destroy

    redirect_to islands_path
  end

  private

  def island_params
    params.require(:island).permit(:name, :address, :price, :number_of_guests, :user_id)
  end
end
