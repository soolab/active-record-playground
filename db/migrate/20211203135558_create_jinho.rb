class CreateJinho < ActiveRecord::Migration[6.1]
  def change
    create_table :jinhos do |t|
      t.string :name
      t.references :jinsoo
      t.timestamps
    end
  end
end
