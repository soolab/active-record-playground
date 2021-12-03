class CreateDummyJinsooTable < ActiveRecord::Migration[6.1]
  def change
    create_table :dummy_jinsoos do |t|
      t.string :name
      t.timestamps
    end
  end
end
