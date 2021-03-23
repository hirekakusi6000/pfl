class Rocordssnsmodel < ActiveRecord::Migration[6.1]
  def change
    drop_table :facebooks
    drop_table :twitters
    drop_table :instagrams
    drop_table :youtubes
    drop_table :tiktoks
  end
end
