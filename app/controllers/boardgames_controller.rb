class BoardgamesController < ApplicationController
  def index
    @boardgames = policy_scope(Boardgame)
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
