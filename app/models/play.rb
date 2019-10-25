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
end
