class CreateDummyUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :dummy_users do |t|
      t.string :login
      t.string :email

      t.timestamps
    end
  end
end
