class Book < ActiveRecord::Base
  validates_presence_of :title
  validates_numericality_of :rating, allow_nil: true
  belongs_to :author
end
