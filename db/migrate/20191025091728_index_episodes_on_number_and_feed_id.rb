# typed: true
# frozen_string_literal: true

class IndexEpisodesOnNumberAndFeedId < ActiveRecord::Migration[5.1]
  def change
    add_index :episodes, %i[feed_id number], unique: true
  end
end
