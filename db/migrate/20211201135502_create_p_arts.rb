class CreatePArts < ActiveRecord::Migration[6.1]
  def change
    create_table :p_arts do |t|
      t.string :name

      t.timestamps
    end
  end
end
