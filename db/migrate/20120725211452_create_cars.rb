class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :plate
      t.string :state
      t.string :city
      t.string :model
      t.integer :model_id

      t.timestamps
    end
  end
end
