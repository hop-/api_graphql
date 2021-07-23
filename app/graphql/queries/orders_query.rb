module Queries
  class OrdersQuery < Queries::BaseQuery
    argument :restaurant_id, ID, required: true
    argument :id, ID, required: false
    argument :item_id, ID, required: false
    argument :made_at, GraphQL::Types::ISO8601DateTime, required: false

    type [Types::OrderType], null: false

    def resolve(restaurant_id:, **args)
      Restaurant.find(restaurant_id).orders.where(args)
    end
  end
end