# typed: strong
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

require "test_helper"

class PlayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
