class BookingsController < ApplicationController
  # def new
  #   @boardgame = Boardgame.find(params[:boardgame_id])
  #   @booking = Booking.new
  # end

  def create
    @boardgame = Boardgame.find(params[:boardgame_id])
    @booking = Booking.new(booking_params)
    @booking.boardgame = @boardgame
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at)
  end
end
