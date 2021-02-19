class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @boardgames = Boardgame.last(3)
  end

  def dashboard
  	@bookings = current_user.bookings.order(created_at: :desc)
    @my_boardgames = current_user.boardgames.order(created_at: :desc)
    @bookings_as_owner = current_user.bookings_as_owner.order(created_at: :desc)
  end
end
