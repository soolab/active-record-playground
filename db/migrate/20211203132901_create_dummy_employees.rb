class CreateDummyEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :dummy_employees do |t|
      t.string :name

      t.timestamps
    end
  end
end
