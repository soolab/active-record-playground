class AddNameColumnToCoffeesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :coffees, :name, :string
  end
end
