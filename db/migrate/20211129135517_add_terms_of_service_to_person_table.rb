class AddTermsOfServiceToPersonTable < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :terms_of_service, :boolean
  end
end
