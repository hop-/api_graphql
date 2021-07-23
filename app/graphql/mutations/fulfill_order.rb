module Mutations
  class FulfillOrder < Mutations::BaseMutation
    argument :restaurant_id, ID, required: true

    type Types::OrderType

    null true

    def resolve(restaurant_id:)
      Restaurant.find(restaurant_id)
        .orders
        .where('made_at' => nil)
        .first.tap { |order|
          return unless order
          order.update!(made_at: DateTime.now)
        }
    end
  end
end