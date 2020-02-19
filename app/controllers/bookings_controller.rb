class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    authorize @booking
    redirect_to island_path(params[:island_id])
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    nb_of_days = params[:booking][:nb_of_nights].to_i
    @booking.end_date = @booking.start_date + nb_of_days
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
    params.require(:booking).permit(:start_date, :total_price, :island_id)
  end
end
