class MakeCategorizationsTableWithJoinsFromBookAndCategory < ActiveRecord::Migration
  def up
    create_table :categorizations do |t|
      t.references :category
      t.references :book
    end
    Book.all.each do |book|
      book_id = book.id
      category_id = book.category_id
      Categorizations.create!({book_id: book_id,
                  category_id: category_id})
    end
    remove_column :books, :category_id
  end

  def down
    add_column :books, :category_id, :integer
    Categorizations.all.each do |references|
      book = Book.find(references[:book_id])
      book.update_attributes(
        category_id: references[:category_id])
    end
    drop_table :categorizations
  end
end
