UserType = GraphQL::ObjectType.define do
  name "User"
  description "a User"
  field :id, types.Int
  field :name, types.String
end

