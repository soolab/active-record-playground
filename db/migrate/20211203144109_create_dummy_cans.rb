class CreateDummyCans < ActiveRecord::Migration[6.1]
  def change
    create_table :dummy_cans do |t|
      t.string :name
      t.references :dummy_trash, null: false, foreign_key: true

      t.timestamps
    end
  end
end
