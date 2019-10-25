class FeedSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
  has_many :episodes
end
