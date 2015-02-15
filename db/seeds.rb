# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tag.create(
    [
        {name: 'PHP'},
        {name: 'Scala'},
        {name: 'Rails'},
        {name: 'HTML'},
        {name: 'Play framework'},
        {name: 'Vagrant'},
        {name: 'Swift'},
        {name: 'CentOS'},
        {name: 'Objective-C'},
        {name: 'CSS'},
    ]
)

Blog.create(
    [
        {name: 'Ytake Blog.', url: 'http://blog.comnect.jp.net/', feed: 'http://blog.comnect.jp.net/feed'},
    ]
)

Article.create(
    [
        {name: 'laravel-elixirにタスク追加する方法(タブ -> スペース変換など)', url: 'http://blog.comnect.jp.net/blog/120', blog_id: '1'},
        {name: 'PhpStormでLaravel5快適開発　おさらい', url: 'http://blog.comnect.jp.net/blog/119', blog_id: '1'},
    ]
)

ArticleTag.create(
    [
        {article_id: 1, tag_id: 1},
        {article_id: 1, tag_id: 2},
        {article_id: 1, tag_id: 3},
        {article_id: 1, tag_id: 4},
        {article_id: 1, tag_id: 5},
    ]
)
