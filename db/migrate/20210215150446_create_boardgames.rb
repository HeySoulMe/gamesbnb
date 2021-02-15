class CreateBoardgames < ActiveRecord::Migration[6.0]
  def change
    create_table :boardgames do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :players
      t.float :price
      t.references :user, null: false, foreign_key: true
      t.string :address

      t.timestamps
    end
  end
end
