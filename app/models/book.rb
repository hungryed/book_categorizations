class Book < ActiveRecord::Base
  validates_presence_of :title
  # validates_presence_of :author_id
  has_one :author
end
