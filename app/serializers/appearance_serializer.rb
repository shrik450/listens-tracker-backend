# frozen_string_literal: true

class AppearanceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :speaking_time
  belongs_to :host
  belongs_to :episode
end
