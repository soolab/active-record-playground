class CreateGuys < ActiveRecord::Migration[6.1]
  def change
    create_table :guys do |t|
      t.string :name

      t.timestamps
    end
  end
end
