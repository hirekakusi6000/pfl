class RecordsWebsite < ActiveRecord::Migration[6.1]
  def change
    drop_table :websites
  end
end
