class BoardgamesController < ApplicationController
  def index
    @boardgames = policy_scope(Boardgame)
  end

  def show
    @boardgame = Boardgame.find(params[:id])
  end

  def new
    @boardgame = Boardgame.new
  end

  def create
    @boardgame = Boardgame.new(boardgame_params)
    @boardgame.save
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
