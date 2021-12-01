class CreatePhsicians < ActiveRecord::Migration[6.1]
  def change
    create_table :phsicians do |t|
      t.string :name

      t.timestamps
    end
  end
end
