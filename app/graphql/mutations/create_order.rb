module Mutations
  class CreateOrder < Mutations::BaseMutation
    argument :item_id, ID, required: true

    type Types::OrderType

    def resolve(item_id:)
      Order.create!(item_id: item_id)
    end
  end
end