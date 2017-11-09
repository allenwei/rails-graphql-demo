LineItemType = GraphQL::ObjectType.define do
  name "LineItem"
  description "Order Line Item"

  field :name, types.String
  field :amount, types.Int
  field :quantity, types.Int
end
