class BoardgamesController < ApplicationController
  def index
    if params[:query].present?
      @boardgames = policy_scope(Boardgame)
      @boardgames = Boardgame.where("name ILIKE ?", "%#{params[:query]}%")
      @markers = @boardgames.geocoded.map do |boardgame|
        {
          lat: boardgame.latitude,
          lng: boardgame.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { boardgame: boardgame }),
          id: boardgame.id
        }
        end
    else
      @boardgames = policy_scope(Boardgame)
      @markers = @boardgames.geocoded.map do |boardgame|
      {
        lat: boardgame.latitude,
        lng: boardgame.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { boardgame: boardgame }),
        id: boardgame.id
      }
      end
    end
  end

  def show
    @boardgame = Boardgame.find(params[:id])
    authorize @boardgame
    @booking = Booking.new
    @price = @boardgame.price
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
