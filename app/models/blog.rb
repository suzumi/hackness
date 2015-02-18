class Blog < ActiveRecord::Base
  has_many :articles
  has_many :blog_tag_relations
  has_many :tags, through: :blog_tag_relations
end
