class ProfileSerializer
  include JSONAPI::Serializer
  attributes :first_name, :last_name, :hcbc, :hcbc_current, :is_admin, :is_current
  has_one :users
end
