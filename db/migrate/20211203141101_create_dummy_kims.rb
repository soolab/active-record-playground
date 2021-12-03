class CreateDummyKims < ActiveRecord::Migration[6.1]
  def change
    create_table :dummy_kims do |t|
      t.string :name

      t.timestamps
    end
  end
end
