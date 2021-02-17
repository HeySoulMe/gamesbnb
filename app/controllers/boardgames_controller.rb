class BoardgamesController < ApplicationController
  def index
    @boardgames = policy_scope(Boardgame)

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @boardgames.geocoded.map do |boardgame|
    {
      lat: boardgame.latitude,
      lng: boardgame.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { boardgame: boardgame }),
    }
    end
  end

  def show
    @boardgame = Boardgame.find(params[:id])
    authorize @boardgame
    @booking = Booking.new
    @markers = [{
      lat: @boardgame.latitude,
      lng: @boardgame.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { boardgame: @boardgame }),
    }]
  end

  def new
    @boardgame = Boardgame.new
    authorize @boardgame
  end

  def create
    @boardgame = Boardgame.new(boardgame_params)
    @boardgame.user = current_user
    authorize @boardgame 
    if @boardgame.save
      redirect_to boardgame_path(@boardgame)
    else
      render :new
    end
  end

  private

  def boardgame_params
    params.require(:boardgame).permit(:name, :description, :category, :players, :price, :address, :photo)
  end
end
