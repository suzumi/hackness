class Tag < ActiveRecord::Base
  has_many :blog_tag_relations
  has_many :blogs, through: :blog_tag_relations
end
