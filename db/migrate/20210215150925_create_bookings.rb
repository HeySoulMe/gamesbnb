class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.references :user, null: false, foreign_key: true
      t.references :boardgame, null: false, foreign_key: true

      t.timestamps
    end
  end
end
