class CreateDummyJinho < ActiveRecord::Migration[6.1]
  def change
    create_table :dummy_jinhos do |t|
      t.string :name
      t.references :dummy_jinsoo
      t.timestamps
    end
  end
end
