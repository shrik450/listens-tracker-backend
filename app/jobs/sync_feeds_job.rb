# typed: false
class SyncFeedsJob < ApplicationJob
  queue_as :default

  def perform(**args)
    feed = Feed.find(args[:feed_id])
    feed_url = feed.try(:feed_url)
    return if feed_url.blank?

    open(feed_url) do |rss|
      rss_feed = RSS::Parser.parse(rss)
      rss_feed.items.each do |item|
        episode_number = item.title.split(" - ")[0].sub("Episode ", "").sub("episode ", "").strip
        episode_title = item.title.split(" - ")[1..-1].join(" - ").strip
        episode_date = item.pubDate
        episode_show_notes = item.description
        itunes_duration = item.itunes_duration
        episode_duration =
          (itunes_duration&.hour&.hours || 0) +
          (itunes_duration&.minute&.minutes || 0) +
          (itunes_duration&.second&.seconds || 0)
        episode_url = item.enclosure&.url || item.url
        ep = Episode.find_by(feed: feed, number: episode_number)

        if ep
          break if ep.name == episode_title

          feed.episodes.create(
            number: episode_number + "(2)", name: episode_title, air_date: episode_date, show_notes: episode_show_notes,
            duration: episode_duration, url: episode_url
          )
        end

        feed.episodes.create(
          number: episode_number, name: episode_title, air_date: episode_date, show_notes: episode_show_notes,
          duration: episode_duration, url: episode_url
        )
      end
    end
  end
end
