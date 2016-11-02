class AddTestIdToAaa < ActiveRecord::Migration[5.0]
  def change
    add_column :aaas, :test_id, :string
  end
end
