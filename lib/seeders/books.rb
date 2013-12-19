module Seeders
  module Books
    class << self
      def seed
        library_books.each do |book_info|
          author = Author.author_info(book_info[:author])
          author = Author.find_or_create_by(author)
          category = Category.find_or_create_by(name: book_info[:category])
          title = book_info[:title]
          book = Book.find_or_create_by(title: title)
          book.update_attributes(author_id: Author.find(author).id)
        end

      end

      def library_books
        [
          {author: "Joseph Conrad",
           title: "Heart of Darkness",
           category: "horror"
           },
           {
          author: "Virginia Woolf",
          title: "Mrs Dalloway",
          category: "non-fiction"
          },
          {
          author: "Kurt Vonnegut",
          title: "Slaughterhouse-Five",
          category: "horror"
          },
          {
          author: "Ernest Hemingway",
          title: "The Sun Also Rises",
          category: "fiction"
          },
          {
          author: "Ernest Hemingway",
          title: "For Whom the Bell Tolls",
          category: "fantasy"
          },
          {
          author: "J.R.R. Tolkien",
          title: "The Hobbit",
          category: "adventure"
          },
          {
          author: "J.R.R. Tolkien",
          title: "The Lord of the Rings",
          category: "adventuer"
          },
        ]
      end
    end
  end
end
