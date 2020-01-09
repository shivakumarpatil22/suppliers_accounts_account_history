class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.integer :supplier_id

      t.timestamps
    end
  end
end

class AddAccountNumberToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :account_number, :string
  end
end


