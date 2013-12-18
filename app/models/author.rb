class Author < ActiveRecord::Base
  validates_presence_of :last_name
  has_many :books
end
