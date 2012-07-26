class CarPark < ActiveRecord::Base
  attr_accessible :apartment, :building, :car_id, :checkGroup_id, :obs, :parkingLot_id
  
  belongs_to :car
  belongs_to :parkingLot
  belongs_to :checkGroup
end
