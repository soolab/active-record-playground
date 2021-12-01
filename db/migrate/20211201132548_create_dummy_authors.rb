class CreateDummyAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :dummy_authors do |t|
      t.string :name

      t.timestamps
    end
  end
end
