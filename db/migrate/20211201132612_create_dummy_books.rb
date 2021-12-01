class CreateDummyBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :dummy_books do |t|
      t.string :name
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
