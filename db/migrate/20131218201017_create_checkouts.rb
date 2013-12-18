class CreateCheckouts < ActiveRecord::Migration
  def up
    create_table :readers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false

      t.timestamps
    end

    create_table :checkouts do |t|
      t.references :book, null: false
      t.references :reader, null: false
      t.datetime :checked_out, null: false
      t.datetime :returned

      t.timestamps
    end
  end

  def down
    drop_table :readers
    drop_table :checkouts
  end
end
