class AddColumnopenStatus < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :open_status, :integer, default: 1, null: false
  end
end
