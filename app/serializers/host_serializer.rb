class HostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
  has_many :appearances
end
