class Category < ActiveHash::Base
  self.data = [
    { id: 1, category: 'ビール' },
    { id: 2, category: 'ワイン' },
    { id: 3, category: 'ウイスキー' },
    { id: 4, category: '焼酎' },
    { id: 5, category: '日本酒' },
    { id: 6, category: 'カクテル' },
  ]

  include ActiveHash::Associations
  has_many :alcohols
end