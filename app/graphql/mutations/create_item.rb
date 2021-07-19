module Mutations
  class CreateItem < Mutations::BaseMutation
    argument :name, String, required: true
    argument :description, String, required: false
    argument :price, Integer, required: true
    argument :restaurant_id, ID, required: true
    argument :category_id, ID, required: true

    type Types::ItemType

    def resolve(restaurant_id: nil, **attrs)
      Restaurant.find(restaurant_id).items.create!(attrs)
    end
  end
end