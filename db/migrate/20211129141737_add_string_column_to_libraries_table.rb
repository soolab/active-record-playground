class AddStringColumnToLibrariesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :libraries, :length_check, :string
  end
end
