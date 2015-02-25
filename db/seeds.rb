# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
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
        {name: 'Ytake Blog.', url: 'http://blog.comnect.jp.net/', feed: 'http://blog.comnect.jp.net/feed', blog_description: 'Ytake Blog.とはweb開発とカレーについて語るblogです'},
        {name: 'まーくんが不定期に更新し続けるブログ', url: 'http://blog.mah-lab.com/', feed: 'http://blog.mah-lab.com/feed/', blog_description: 'まーくんが不定期に更新し続けるブログ,Webプログラマーのまーくんこと@mah_labが、Webやビジネスに関わることを不定期に書き続けます。様々なWebサービスの立ち上げに関わっているからこそ書ける情報をお伝えします。'},
        {name: 'Webクリエイターボックス', url: 'http://blog.comnect.jp.net/', feed: 'http://www.webcreatorbox.com/', blog_description: 'WebデザインやWebサイト制作、最新のWeb業界情報などを紹介していくサイト。'},
    ]
)

Article.create(
    [
        {name: 'laravel-elixirにタスク追加する方法(タブ -> スペース変換など)', url: 'http://blog.comnect.jp.net/blog/120', article_description: '5がリリースされて安定版になったので中身をいじりまくって遊んでますが、 コンテ...', blog_id: '1'},
        {name: 'PhpStormでLaravel5快適開発　おさらい', url: 'http://blog.comnect.jp.net/blog/119', article_description: 'みなさんPhpStorm使ってますか？ 今回はそろそろ5が出るということもあり、Lar...', blog_id: '1'},
        {name: '「元に戻せる」＝「トライ・アンド・エラー」を可能にするイノベーション', url: 'http://blog.mah-lab.com/2014/12/04/we-can-undo/', article_description: '「元に戻せないシステムは、システムの基本的な価値を毀損している」みたいなタイトルにしようと思ったのですが、尖り過ぎな気がしたのでユルめのタイトルにしてみました。 「元に戻せる」安心感のためにシステムを使っている 社内で利', blog_id: '2'},
        {name: 'RubyMineを使っているならReformatでもっと幸せになろう', url: 'http://blog.mah-lab.com/2014/12/03/rubymine-reformat/', article_description: 'こんにちは！　RubyMine Advent Calendar 20143日目の記事です。さて、皆さんはRubyMineのReformatという機能は活用していますでしょうか？　ん？　未だに手でインデントを揃えているって', blog_id: '2'},
        {name: '海外でWebデザイナー・Webデベロッパーとして働くために必要なスキル', url: 'http://www.webcreatorbox.com/webinfo/skill-work-oversea/', article_description: '昨年バンクーバーのうぇぶ屋のセナ氏と立ちあげた、クリエイター向け留学サポート企業「Frog」で素敵な広報担当をしている私ですが、セミナーや留学相談会でよく聞かれるものの、うまく答えられなかった質問があります。それは「どれ', blog_id: '3'},
        {name: 'SVGを使いこなすための便利ツールいろいろ', url: 'http://www.webcreatorbox.com/webinfo/svg-tools/', article_description: 'SVG（Scalable Vector Graphics）はIllustratorで作成したようなベクター画像を表示する技術。高解像度ディスプレイでもくっきりはっきり表示できるので、近年海外サイトを中心に見かける機会が増',  blog_id: '3'},
    ]
)

BlogTagRelation.create(
    [
        {blog_id: 1, tag_id: 1},
        {blog_id: 1, tag_id: 2},
        {blog_id: 1, tag_id: 3},
        {blog_id: 1, tag_id: 4},
        {blog_id: 1, tag_id: 5},
        {blog_id: 2, tag_id: 1},
        {blog_id: 2, tag_id: 3},
        {blog_id: 2, tag_id: 5},
        {blog_id: 2, tag_id: 7},
        {blog_id: 2, tag_id: 9},
        {blog_id: 3, tag_id: 6},
        {blog_id: 3, tag_id: 7},
        {blog_id: 3, tag_id: 8},
        {blog_id: 3, tag_id: 9},
        {blog_id: 3, tag_id: 10},
    ]
)
=end