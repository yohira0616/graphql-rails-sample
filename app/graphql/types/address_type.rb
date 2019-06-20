module Types
  class AddressType < Types::BaseObject
    field :id, ID, null: false
    field :postal_code, Integer, null: false
    field :address, String, null: false
  end
end
