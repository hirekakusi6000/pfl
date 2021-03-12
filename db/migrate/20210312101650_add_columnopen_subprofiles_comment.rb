class AddColumnopenSubprofilesComment < ActiveRecord::Migration[6.1]
  def change
    add_column  :subprofiles, :comment, :string  
  end
end