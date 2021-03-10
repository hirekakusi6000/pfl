class RemovesnsColomnFromusers < ActiveRecord::Migration[6.1]
  def change
   remove_column :users, :sns_icons_clor, :string
  end
end
