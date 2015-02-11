json.array!(@blogs) do |blog|
  json.extract! blog, :id, :name, :url, :feed
  json.url blog_url(blog, format: :json)
end
