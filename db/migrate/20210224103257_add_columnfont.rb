class AddColumnfont < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :font_color, :string
    add_column :users, :font_family, :string
    add_column :users, :link_background_color, :string
    add_column :users, :link_font_color, :string
  end
end
