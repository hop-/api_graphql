module Mutations
  class UpdateRestaurant < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :location, String, required: false
    argument :phone, String, required: false

    type Types::RestaurantType

    def resolve(id: nil, **attrs)
      Restaurant.find(id).tap { |restaurant|
        restaurant.update!(attrs)
      }
    end
  end
end