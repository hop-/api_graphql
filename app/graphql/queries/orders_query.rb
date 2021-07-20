module Queries
  class OrdersQuery < Queries::BaseQuery
    argument :restaurant_id, ID, required: true
    argument :id, ID, required: false
    argument :item_id, ID, required: false

    type [Types::OrderType], null: false

    def resolve(restaurant_id:, **args)
      Order.joins(:item).where("item.restaurant_id" => restaurant_id).where(args)
    end
  end
end