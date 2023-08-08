class BuildingDetail < ApplicationRecord
  # has_many :colony
  belongs_to :colony ,primary_key: 'room_number'
end
