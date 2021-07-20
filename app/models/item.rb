class Item < ApplicationRecord
  belongs_to :category
  belongs_to :restaurant
  has_many :order, dependent: :destroy
end
