class CreateCategories < ActiveRecord::Migration
  def up
    create_table :categories do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_column :books, :category_id, :integer
  end

  def down
    drop_table :categories
    remove_column :books, :category_id
  end
end
