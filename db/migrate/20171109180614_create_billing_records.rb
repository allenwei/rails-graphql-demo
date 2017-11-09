class CreateBillingRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :billing_records do |t|
      t.string :card_number
      t.boolean :active, default: true
      t.string :user_id

      t.timestamps
    end

    add_index :billing_records, :user_id
  end
end
