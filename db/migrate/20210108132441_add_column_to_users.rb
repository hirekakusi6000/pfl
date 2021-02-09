class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :email, :string
    add_column :users, :password, :string
    add_column :users, :pfl_text, :string
    add_column :users, :icon_image, :string
    add_column :users, :header_image, :string
  end
end
