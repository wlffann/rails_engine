class ChangeNamesToCiCustomers < ActiveRecord::Migration[5.0]
  def change
    enable_extension :citext
    change_column :customers, :first_name, :citext
    change_column :customers, :last_name, :citext
    change_column :merchants, :name, :citext
  end
end
