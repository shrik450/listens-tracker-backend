# typed: false
# frozen_string_literal: true

class HostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
  has_many :appearances
end
