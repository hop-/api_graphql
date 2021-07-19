module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :price, Integer, null: false
    field :description, String, null: true
    field :category, CategoryType, null: false
    field :restaurant, RestaurantType, null: false
  end
end