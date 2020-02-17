class CreateMoissonneuses < ActiveRecord::Migration[6.0]
  def change
    create_table :moissonneuses do |t|
      t.string :name
      t.string :address
      t.string :brand
      t.string :model
      t.text :description
      t.integer :power
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
