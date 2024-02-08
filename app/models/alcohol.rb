class Alcohol < ApplicationRecord
  has_one :category
  has_one_attached :image
end
