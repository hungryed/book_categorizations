require 'spec_helper'

describe Seeders::Books do
  let(:seeder) { Seeders::Books }

  it "seeds the books" do
    random_book = Seeders::Books.library_books.first[1]
    seeder.seed
    expect(Book.where(title: random_book)).to be_present
  end

  it "seeds the books authors" do
    author = Seeders::Books.library_books.first[0]
    seeder.seed
    author = Author.author_info(author)
    expect(Author.where(author)).to be_present
  end

  it "does not create duplicates" do
    seeder.seed
    book_count = Book.count
    seeder.seed
    expect(Book.count).to eql(book_count)
  end
end
