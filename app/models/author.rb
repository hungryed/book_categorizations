class Author < ActiveRecord::Base
  validates_presence_of :last_name
  has_many :books

  def self.author_info(string)
    first_and_last = string.split
    first_name, last_name = first_and_last.first, first_and_last.last
    {
      first_name: first_name,
      last_name: last_name
    }
  end
end
