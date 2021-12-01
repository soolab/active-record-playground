class CreateDummyAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :dummy_accounts do |t|
      t.string :account_number
      t.references :dummy_supply, null: false, foreign_key: true

      t.timestamps
    end
  end
end
