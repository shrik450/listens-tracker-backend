# typed: false
# frozen_string_literal: true

class PlaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :played_at, :play_time, :episode_id
end
