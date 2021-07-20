module Types
  class RestaurantType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :location, String, null: true
    field :phone, String, null: true
    field :items, [Types::ItemType], null: true
  end
end