class Colony < ApplicationRecord
  has_many :building_details
  self.primary_key = 'room_number'
end
