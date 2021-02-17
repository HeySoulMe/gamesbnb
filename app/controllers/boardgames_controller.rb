class BoardgamesController < ApplicationController
  def index
    @boardgames = policy_scope(Boardgame)
  end

  def show
    @boardgame = Boardgame.find(params[:id])
    authorize @boardgame
    #@boardgame = Boardgame.find(params[:boardgame_id])
    @booking = Booking.new
  end

  def new
    @boardgame = Boardgame.new
    authorize @boardgame
  end

  def create
    @boardgame = Boardgame.new(boardgame_params)
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
