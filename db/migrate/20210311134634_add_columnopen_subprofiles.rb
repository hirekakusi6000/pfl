class AddColumnopenSubprofiles < ActiveRecord::Migration[6.1]
  def change
   add_column  :subprofiles, :link_background_color, :string
   add_column  :subprofiles, :link_font_color, :string  
   add_column  :subprofiles, :open_status, :integer, default: 1, null: false
  end
end
