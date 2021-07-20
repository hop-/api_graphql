module Types
  class OrderType < Types::BaseObject
    field :id, ID, null: false
    field :item, ItemType, null: false
    field :made_at, GraphQL::Types::ISO8601DateTime, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end