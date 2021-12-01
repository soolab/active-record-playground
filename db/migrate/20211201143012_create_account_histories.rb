class CreateAccountHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :account_histories do |t|
      t.integer :credit_rating
      t.references :dummy_account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
