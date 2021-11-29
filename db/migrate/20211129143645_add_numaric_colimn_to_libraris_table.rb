class AddNumaricColimnToLibrarisTable < ActiveRecord::Migration[6.1]
  def change
    add_column :libraries, :numaric_check, :integer
  end
end
