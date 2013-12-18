class Checkout < ActiveRecord::Base
  belongs_to :reader
  has_one :book
  validates_presence_of :reader
  validates_presence_of :book
end
