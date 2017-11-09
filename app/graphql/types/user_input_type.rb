UserInputType = GraphQL::InputObjectType.define do
  name "UserInputType"
  description "User Input"

  argument :name, !types.String do
    description "name of the user"
  end
end

