class ChangeFlowersToPlants < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :flowers
    add_column :plants, :flowers, :boolean, default: false
  end
end
