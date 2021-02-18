class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boardgame
  # belongs_to :users_as_owner, through: :boardgames, source: :users
end
