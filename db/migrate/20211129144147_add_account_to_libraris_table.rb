class AddAccountToLibrarisTable < ActiveRecord::Migration[6.1]
  def change
    add_column :libraries, :account, :string
  end
end
