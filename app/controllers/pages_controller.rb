class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @boardgames = Boardgame.last(3)
  end

  def dashboard
  	@bookings = current_user.bookings
  end
end
