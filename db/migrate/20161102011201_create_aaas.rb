class CreateAaas < ActiveRecord::Migration[5.0]
  def change
    create_table :aaas do |t|

      t.timestamps
    end
  end
end
