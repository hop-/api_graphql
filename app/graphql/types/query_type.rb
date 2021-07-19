module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_items, [Types::ItemType], null: false,
      description: "List all items"
    def all_items
      Item.all
    end

    field :all_categories, [Types::CategoryType], null: false,
      description: "List all categories"
    def all_categories
      Category.all
    end

    field :all_restaurants, [Types::RestaurantType], null: false,
      description: "List all restaurants"
    def all_restaurants
      Restaurant.all
    end
  end
end
