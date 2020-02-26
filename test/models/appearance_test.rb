# typed: strong
# frozen_string_literal: true

# == Schema Information
#
# Table name: appearances
#
#  id            :integer          not null, primary key
#  speaking_time :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  episode_id    :integer          not null
#  host_id       :integer          not null
#

require "test_helper"

class AppearanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
