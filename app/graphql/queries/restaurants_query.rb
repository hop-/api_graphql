module Queries
  class RestaurantsQuery < Queries::BaseQuery
    argument :id, ID, required: false
    argument :name, String, required: false

    type [Types::RestaurantType], null: false

    def resolve(**args)
      Restaurant.where(args)
    end
  end
end