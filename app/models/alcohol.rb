class Alcohol < ApplicationRecord
  belongs_to :user
  has_one :category
  has_one_attached :image

  validates :image, presence: true
  validates :alcohol_name, presence: true
  validates :memo, presence: true
  validates :category_id, presence: true
  
  def self.search(keyword)
    where("alcohol_name LIKE ?", "%#{keyword}%")
  end
end