class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @boardgames = Boardgame.last(3)
  end

  def dashboard
  	@bookings = current_user.bookings
    @my_boardgames = current_user.boardgames
    @bookings_as_owner = current_user.bookings_as_owner
  end
end
