module Seeders
  module Books
    class << self
      def seed
        library_books.each do |author, books|
          author = Author.author_info(author)
          Author.find_or_create_by(author)
          all_books = [books]
          all_books.flatten.each do |book|
            Book.find_or_create_by(title: book)
          end
        end

      end

      def library_books
        {
          "Joseph Conrad" => "Heart of Darkness",
          "Virginia Woolf" => "Mrs Dalloway",
          "Kurt Vonnegut" => "Slaughterhouse-Five",
          "Ernest Hemingway" => ["The Sun Also Rises",
                                "For Whom the Bell Tolls"],
          "J.R.R. Tolkien" => "The Hobbit",
          "J.R.R. Tolkien" => "The Lord of the Rings"
        }
      end
    end
  end
end
