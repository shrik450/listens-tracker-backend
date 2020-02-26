# typed: strict
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

class Appearance < ApplicationRecord
  belongs_to :host, inverse_of: :appearances
  belongs_to :episode, inverse_of: :appearances

  delegate :name, to: :host

  validates :host, presence: true
  validates :episode, presence: true
end
