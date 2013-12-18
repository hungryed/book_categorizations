class AddAuthorToBooks < ActiveRecord::Migration
  def up
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name, null: false
    end

    change_table :books do |t|
      t.references :author
    end
  end

  def down
    drop_table :authors
    remove_column :books, :author_id
  end
end
