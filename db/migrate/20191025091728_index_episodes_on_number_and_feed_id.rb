class IndexEpisodesOnNumberAndFeedId < ActiveRecord::Migration[5.1]
  def change
    add_index :episodes, %i[feed_id number]
  end
end
