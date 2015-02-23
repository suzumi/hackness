require "feedjira"

namespace :fetch do
  desc 'fetch feed'
  task feed: :environment do
    # puts Blog.last().to_yaml
    blogs = Blog.all
    feed = Feedjira::Parser::RSS.new
    blogs.each do |blog|
      feed.feed_url = blog.url
      binding.pry
      feed.last_modified = DateTime.parse(blog.articles.published)
      last_entry = Feedjira::Parser::RSSEntry.new
      last_entry.url = blog.articles.url.order("published DESC")
      feed.entries = [last_entry]

      Feedjira::Feed.update(feed)
      binding.pry
    end

    # binding.pry
  end
end
