# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# =begin
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
        {name: 'Ytake Blog.', url: 'http://blog.comnect.jp.net/', feed: 'http://blog.comnect.jp.net/feed', blog_description: 'Ytake Blog.とはweb開発とカレーについて語るblogです', last_modified: '2015-03-16'},
    ]
)

Article.create(
    [
        {name: 'laravel-elixirにタスク追加する方法(タブ -> スペース変換など)', url: 'http://blog.comnect.jp.net/blog/120', article_description: '5がリリースされて安定版になったので中身をいじりまくって遊んでますが、 コンテ...', blog_id: '1', published: '2015-03-15', updated: '2015-03-16'},
        {name: 'PhpStormでLaravel5快適開発　おさらい', url: 'http://blog.comnect.jp.net/blog/119', article_description: 'みなさんPhpStorm使ってますか？ 今回はそろそろ5が出るということもあり、Lar...', blog_id: '1', published: '2015-03-13', updated: '2015-03-14'},
    ]
)

BlogTagRelation.create(
    [
        {blog_id: 1, tag_id: 1},
        {blog_id: 1, tag_id: 2},
        {blog_id: 1, tag_id: 3},
        {blog_id: 1, tag_id: 4},
        {blog_id: 1, tag_id: 5},
    ]
)
# =end