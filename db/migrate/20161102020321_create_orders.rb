class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :order_no

      t.string :channel
      t.string :body
      t.string :subject

      t.integer :amount

      t.string :metadata

      t.timestamps
    end
  end
end
