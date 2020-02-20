class IslandsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:name]
      @islands = policy_scope(Island.geocoded).where("lower(name) LIKE ?","%#{params[:name].downcase}%")
    else
      @islands = policy_scope(Island.geocoded)
    end
     # returns islands with coordinates

    @markers = @islands.map do |island|
      {
        lat: island.latitude,
        lng: island.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { island: island }),
        image_url: helpers.asset_url('logo.png')
      }
    end
  end

  def show
    @island = Island.find(params[:id])
    authorize @island
    @booking = Booking.new
  end

  def new
    @island = Island.new
    authorize @island
  end

  def create
    @island = Island.new(island_params)
    authorize @island
    @island.user = current_user
    if @island.save
      redirect_to island_path(@island)
    else
      render :new
    end
  end

  def edit
    @island = Island.find(params[:id])
    authorize @island
  end

  def update
    @island = Island.find(params[:id])
    authorize @island
    @island.user = current_user
    @island.update(island_params)
    if @island.save
      redirect_to island_path(@island)
    else
      render :new
    end
  end

  def destroy
    @island = Island.find(params[:id])
    authorize @island
    @island.destroy

    redirect_to islands_path
  end

  private

  def island_params
    params.require(:island).permit(:name, :address, :price, :number_of_guests, :user_id, :available, :photo)
  end
end

