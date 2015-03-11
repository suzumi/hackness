json.array!(@articles) do |article|
  json.extract! article, :id, :name, :url, :blog_id, :published
  json.blog_name article.blog.name
  json.blog_url article.blog.url
end
