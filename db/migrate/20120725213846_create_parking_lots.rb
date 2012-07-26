class CreateParkingLots < ActiveRecord::Migration
  def change
    create_table :parking_lots do |t|
      t.integer :building
      t.integer :apartment
      t.integer :x
      t.integer :y
      t.integer :angle
      t.string :obs

      t.timestamps
    end
  end
end
