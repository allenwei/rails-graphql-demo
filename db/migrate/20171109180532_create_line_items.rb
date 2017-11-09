class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.integer :amount
      t.integer :order_id
      t.string :name
      t.integer :quantity, default: 0

      t.timestamps
    end
    
    add_index :line_items, :order_id
  end
end
