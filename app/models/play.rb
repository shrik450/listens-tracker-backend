# frozen_string_literal: true

# == Schema Information
#
# Table name: plays
#
#  id         :integer          not null, primary key
#  played_at  :datetime         not null
#  play_time  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  episode_id :integer          not null
#

class Play < ApplicationRecord
  belongs_to :episode, inverse_of: :plays

  validates :played_at, :play_time, :episode, presence: true
  validate :play_time_less_than_duration

  private

  def play_time_less_than_duration
    return if episode.duration.zero?

    errors.add("play_time", "greater than duration of episode") if play_time > episode.duration
  end
end
