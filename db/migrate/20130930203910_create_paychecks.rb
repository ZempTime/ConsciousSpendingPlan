class CreatePaychecks < ActiveRecord::Migration
  def change
    create_table :paychecks do |t|
      t.float :total_amount
      t.datetime :received_at

      t.timestamps
    end
  end
end
