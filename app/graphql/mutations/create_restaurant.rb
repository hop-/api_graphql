module Mutations
  class CreateRestaurant < Mutations::BaseMutation
    argument :name, String, required: true
    argument :location, String, required: false
    argument :phone, String, required: false

    type Types::RestaurantType

    def resolve(**attrs)
      Restaurant.create!(attrs)
    end
  end
end