class RemoveLinkColomnFromusers < ActiveRecord::Migration[6.1]
  def change
   remove_column :users, :link_background_color, :string
   remove_column :users, :link_font_color, :string    
  end
end
