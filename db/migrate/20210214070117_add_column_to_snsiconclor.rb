class AddColumnToSnsiconclor < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :sns_icons_clor, :string
  end
end
