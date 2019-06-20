module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    # user
    field :user,Types::UserType,null:true do
      description "get current_user"
      argument :id,ID,required:true
        #resolve ->(_obj,_args,ctx){
      #  ctx[:current_user]
      #}
    end

    def user(id:)
      User.includes(:address).find(id)
    end
  end
end
