Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :orders, types[OrderType] do
    argument :limit, types.Int
    resolve ->(obj, args, ctx) {
      Order.all.limit(args.limit)
    }
  end
  field :user, UserType do
    argument :id, types.Int
    resolve ->(obj, args, ctx) {
      User.find(args["id"])
    }
  end
end
