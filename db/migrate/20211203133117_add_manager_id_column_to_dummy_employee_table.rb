class AddManagerIdColumnToDummyEmployeeTable < ActiveRecord::Migration[6.1]
  def change
    add_column :dummy_employees, :manager_id, :integer
  end
end
