class Order < ApplicationRecord
  belongs_to :item
  has_one :restaurant, through: :item
end
