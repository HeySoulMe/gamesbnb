class BookingsController < ApplicationController
  # def new
  #   @boardgame = Boardgame.find(params[:boardgame_id])
  #   @booking = Booking.new
  # end

  def create
    @boardgame = Boardgame.find(params[:boardgame_id])
    @booking = Booking.new(booking_params)
    @booking.boardgame = @boardgame
    @booking.user = current_user
    @booking.status = "pending"
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      render "boardgames/show"
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    authorize @booking
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    authorize @booking
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at)
  end
end
