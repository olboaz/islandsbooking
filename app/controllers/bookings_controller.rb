class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    authorize @booking
    redirect_to island_path(params[:island_id])
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    if @booking.save
      redirect_to current_user
    else
      flash[:notice] = "The booking could not be completed."
      redirect_to island_path(params[:booking][:island_id])
    end
  end

  private

  def booking_params
    dates = params[:booking][:start_date].match(/(?<start_date>[0-9]{2}-[0-9]{2}-[0-9]{4}) to (?<end_date>[0-9]{2}-[0-9]{2}-[0-9]{4})/)
    params[:booking][:start_date] = dates[:start_date]
    params[:booking][:end_date] = dates[:end_date]
    params.require(:booking).permit(:start_date, :end_date, :total_price, :island_id)
  end
end
