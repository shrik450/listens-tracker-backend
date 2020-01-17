# frozen_string_literal: true

class EpisodeSerializer
  include FastJsonapi::ObjectSerializer

  set_type :episode
  attributes :id, :number, :name, :show_notes, :comments, :url, :air_date, :duration, :last_played_at,
             :number_of_times_played
end
