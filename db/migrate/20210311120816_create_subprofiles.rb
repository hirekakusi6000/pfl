class CreateSubprofiles < ActiveRecord::Migration[6.1]
  def change
    create_table :subprofiles do |t|
      t.string :title, null: false
      t.string :pfl_text
      t.string :font_color
      t.string :background_color
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
