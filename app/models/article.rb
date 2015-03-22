class Article < ActiveRecord::Base
  belongs_to :blog
  paginates_per 10
end
