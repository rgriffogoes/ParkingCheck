class Car < ActiveRecord::Base
  attr_accessible :city, :model, :model_id, :plate, :state
  belongs_to :model
end
