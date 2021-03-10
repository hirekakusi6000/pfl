class RemoveColomnFromlinks < ActiveRecord::Migration[6.1]
  def change
    add_column :links, :background_color, :string
    add_column :links, :font_color, :string
  end
end
