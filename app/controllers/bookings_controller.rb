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
    @booking.status = "Pending"
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      render "boardgames/show"
    end
  end

  def change_status
    if @booking.status == "Pending" &&
      @status

    else

    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at, :status)
  end
end
