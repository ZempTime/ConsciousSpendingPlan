class CreateDisbursments < ActiveRecord::Migration
  def change
    create_table :disbursments do |t|
      t.integer :paycheck_id
      t.float :amount
      t.integer :account_id

      t.timestamps
    end
  end
end
