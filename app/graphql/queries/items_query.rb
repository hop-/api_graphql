module Queries
  class ItemsQuery < Queries::BaseQuery
    argument :id, ID, required: false
    argument :restaurant_id, ID, required: false
    argument :category_id, ID, required: false
    argument :name, String, required:false

    type [Types::ItemType], null: false

    def resolve(**args)
      Item.where(args)
    end
  end
end