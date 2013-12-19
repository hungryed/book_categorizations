class Categorizations < ActiveRecord::Base
  belongs_to :book
  belongs_to :category
  validates_presence_of :category
  validates_presence_of :book
  validates_uniqueness_of :book_id, scoped: :category_id
end
