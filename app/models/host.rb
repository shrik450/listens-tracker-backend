# typed: strong
# frozen_string_literal: true

# == Schema Information
#
# Table name: hosts
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Host < ApplicationRecord
  has_many :appearances, inverse_of: :host
  has_many :episodes, -> { distinct }, through: :appearances

  validates :name, presence: true
end
