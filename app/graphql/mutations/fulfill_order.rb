module Mutations
  class FulfillOrder < Mutations::BaseMutation
    argument :restaurant_id, ID, required: true

    type Types::OrderType

    null true

    def resolve(restaurant_id:)
      Order.joins(:item)
        .where('item.restaurant_id' => restaurant_id, 'made_at' => nil)
        .order(created_at: :asc)
        .first().tap { |order|
          return unless order
          order.update!(made_at: DateTime.now)
        }
    end
  end
end