class Article < ActiveRecord::Base
  belongs_to :blog
  paginates_per 5
end
