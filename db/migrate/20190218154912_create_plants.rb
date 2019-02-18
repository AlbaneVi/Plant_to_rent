class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :family
      t.string :flowers
      t.text :description
      t.string :water
      t.string :sun
      t.string :ext_int
      t.integer :size_cm
      t.integer :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
