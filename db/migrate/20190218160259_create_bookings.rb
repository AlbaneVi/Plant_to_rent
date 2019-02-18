class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :time
      t.string :name
      t.integer :price
      t.references :user, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
