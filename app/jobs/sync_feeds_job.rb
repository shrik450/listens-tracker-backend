class SyncFeedsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    feed = args[0]
    feed_url = feed.try(:feed_url)
    return if feed_url.blank?

    open(feed_url) do |rss|
      rss_feed = RSS::Parser.parse(rss)
      feed.items.each do |item|
      end
    end
  end
end
