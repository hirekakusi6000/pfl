class AddColumnopenSubprofilesFontFamily < ActiveRecord::Migration[6.1]
  def change
    add_column  :subprofiles, :font_family, :string      
  end
end
