json.array!(@articles) do |article|
  json.extract! article, :id, :name, :url, :blog_id
  json.blog_name article.blog.name
  json.blog_url article.blog.url

  # json.(article.blog, :name, :url, :feed)
  # json.url article_url(article, format: :json)
end
