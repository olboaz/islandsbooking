class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    nb_of_days = params[:booking][:nb_of_nights].to_i
    @booking.end_date = @booking.start_date + nb_of_days
    @booking.user = current_user
    if @booking.save
      redirect_to current_user
    else
      @island = Island.find(params[:booking][:island_id])
      flash[:notice] = "The booking could not be completed."
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :total_price, :island_id)
  end
end
