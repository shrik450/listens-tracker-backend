# == Schema Information
#
# Table name: episodes
#
#  id         :integer          not null, primary key
#  number     :string           not null
#  name       :string           not null
#  show_notes :string
#  comments   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  feed_id    :integer          not null
#  air_date   :datetime         not null
#
# Indexes
#
#  index_episodes_on_feed_id_and_number  (feed_id,number)
#

require 'test_helper'

class EpisodeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
