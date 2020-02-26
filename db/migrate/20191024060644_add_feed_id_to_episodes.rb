# typed: true
# frozen_string_literal: true

class AddFeedIdToEpisodes < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :feed_id, :integer
  end
end
