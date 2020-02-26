# typed: false
# frozen_string_literal: true

class EpisodeAppearanceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :speaking_time
  belongs_to :host
  belongs_to :episode
end
