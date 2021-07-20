module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_categories, [Types::CategoryType], null: false,
      description: "List all categories"
    def all_categories
      Category.all
    end

    field :restaurants, resolver: Queries::RestaurantsQuery,
      description: "Get restaurants"

    field :items, resolver: Queries::ItemsQuery,
      description: "Get items"

    field :orders, resolver: Queries::OrdersQuery,
      description: "Get orders"
  end
end
