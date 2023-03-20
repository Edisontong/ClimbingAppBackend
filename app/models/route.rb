class Route < ApplicationRecord
  belongs_to :area
  has_many :ascents
end
