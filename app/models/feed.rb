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
end
