Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :addUser, UserType do
    argument :user, !UserInputType
    resolve ->(t, args, c) {
      User.create!(args.to_h["user"])
    }
  end
end
