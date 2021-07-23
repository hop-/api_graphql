class Restaurant < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :orders, through: :items
end
