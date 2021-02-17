class AddCoordinatesToBoardgames < ActiveRecord::Migration[6.0]
  def change
    add_column :boardgames, :latitude, :float
    add_column :boardgames, :longitude, :float
  end
end
