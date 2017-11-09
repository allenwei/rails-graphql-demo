class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :number
      t.integer :user_id
      t.string :billing_record_id
      t.integer :total

      t.timestamps
    end

    add_index :orders, :number
    add_index :orders, :user_id
  end
end
