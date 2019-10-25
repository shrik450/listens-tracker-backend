# frozen_string_literal: true

class EpisodeSerializer
  include FastJsonapi::ObjectSerializer

  set_type :episode
  attributes :id, :number, :name, :show_notes, :comments
  has_many :hosts
  has_many :plays
  belongs_to :feed, record_type: :feed
end
