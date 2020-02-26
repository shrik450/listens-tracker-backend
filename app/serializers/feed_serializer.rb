# typed: false
# frozen_string_literal: true

class FeedSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :feed_url
end
