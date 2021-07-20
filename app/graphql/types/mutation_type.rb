module Types
  class MutationType < Types::BaseObject
    field :create_restaurant, mutation: Mutations::CreateRestaurant,
      description: "Create an restaurant"
    field :update_restaurant, mutation: Mutations::UpdateRestaurant,
      description: "Update the existing restaurant"
    field :create_item, mutation: Mutations::CreateItem,
      description: "Create an item"
    field :update_item, mutation: Mutations::UpdateItem,
      description: "Update the existing item"
    field :create_order, mutation: Mutations::CreateOrder,
      description: "Create an order"
    field :fulfill_order, mutation: Mutations::FulfillOrder,
      description: "Fulfill the first order in queue for given restaurant"
  end
end
