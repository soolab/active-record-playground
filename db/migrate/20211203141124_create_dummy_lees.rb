class CreateDummyLees < ActiveRecord::Migration[6.1]
  def change
    create_table :dummy_lees do |t|
      t.string :name
      t.references :dummy_kim, null: false, foreign_key: true

      t.timestamps
    end
  end
end
