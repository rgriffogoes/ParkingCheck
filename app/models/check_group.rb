class CheckGroup < ActiveRecord::Base
  attr_accessible :number, :refDate
  has_many :carParks
end
