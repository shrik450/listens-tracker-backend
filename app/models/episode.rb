# frozen_string_literal: true

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

class Episode < ApplicationRecord
  has_many :appearances, inverse_of: :episode
  has_many :hosts, -> { distinct }, through: :appearances
  has_many :plays

  belongs_to :feed, inverse_of: :episodes

  validates :number, :name, :air_date, presence: true
  validates :number, uniqueness: {scope: :feed, message: "A feed cannot have two episodes with the same number."}
end
