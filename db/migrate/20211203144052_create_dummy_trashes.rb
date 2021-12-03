class CreateDummyTrashes < ActiveRecord::Migration[6.1]
  def change
    create_table :dummy_trashes do |t|
      t.string :name

      t.timestamps
    end
  end
end
