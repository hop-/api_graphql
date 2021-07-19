module Mutations
  class UpdateItem < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :description, String, required: false
    argument :price, Integer, required: false
    argument :restaurant_id, ID, required: false
    argument :category_id, ID, required: false

    type Types::ItemType

    def resolve(id: nil, **attrs)
      Item.find(id).tap { |item|
        item.update!(attrs)
      }
    end
  end
end