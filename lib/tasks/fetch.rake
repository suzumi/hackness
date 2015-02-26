require "feedjira"

namespace :fetch do
  desc 'fetch feed'
  task feed: :environment do
    # puts Blog.last().to_yaml
    blogs = Blog.all
    feed = Feedjira::Parser::RSS.new
    # 各ブログの最新記事を取得し、DBに更新をする
    blogs.each do |blog|
      last_entry_url = blog.articles.order("published DESC").first.url
      feed.feed_url = blog.feed
      feed.last_modified = Time.zone.parse(blog.last_modified.to_s)
      # feed.last_modified = DateTime.parse(blog.last_modified.to_s)
      last_entry = Feedjira::Parser::RSSEntry.new
      last_entry.url = last_entry_url
      feed.entries = [last_entry]

      updated_feed = Feedjira::Feed.update(feed)
      if updated_feed.updated?
        blog.last_modified = updated_feed.last_modified
        updated_feed.new_entries.each do |entry|
          blog.articles.create(
              name: entry.title,
              url: entry.url,
              article_description: entry.summary,
              blog_id: blog.id,
              published: entry.published,
              updated: entry.updated
          )
        end
      end
    end
  end
end
