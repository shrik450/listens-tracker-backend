# typed: false
# frozen_string_literal: true

# == Schema Information
#
# Table name: feeds
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Feed < ApplicationRecord
  has_many :episodes, inverse_of: :feed, dependent: :destroy

  validates :name, presence: true

  def sync_feed
    SyncFeedsJob.perform_later(feed_id: id) if feed_url.present?
  end
end
