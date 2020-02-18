class AddCoordinatesToMoissonneuses < ActiveRecord::Migration[6.0]
  def change
    add_column :moissonneuses, :latitude, :float
    add_column :moissonneuses, :longitude, :float
  end
end
