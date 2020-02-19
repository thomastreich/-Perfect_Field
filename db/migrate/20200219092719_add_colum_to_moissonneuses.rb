class AddColumToMoissonneuses < ActiveRecord::Migration[6.0]
  def change
    add_column :moissonneuses, :price, :integer
  end
end
