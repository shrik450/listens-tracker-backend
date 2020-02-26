# typed: true
class AddFeedUrlToFeeds < ActiveRecord::Migration[6.0]
  def change
    add_column :feeds, :feed_url, :string
  end
end
