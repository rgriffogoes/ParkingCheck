class CreateCarParks < ActiveRecord::Migration
  def change
    create_table :car_parks do |t|
      t.integer :checkGroup_id
      t.integer :car_id
      t.integer :parkingLot_id
      t.string :obs
      t.integer :building
      t.integer :apartment

      t.timestamps
    end
  end
end
