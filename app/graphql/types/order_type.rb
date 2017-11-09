OrderType = GraphQL::ObjectType.define do
  name "Order"
  description "Order"

  field :number, types.String
  field :total, types.Int
  field :line_items, types[LineItemType] do
    argument :limit, types.Int
    resolve ->(order, args, ctx) {
      order.line_items.limit(args.limit)
      #RecordLoader.for(LineItem, column: 'order_id').load(order.id)
    }
  end
  field :user, UserType do
    resolve -> (order, args, context) { RecordLoader.for(User).load(order.user_id) }
  end
end
