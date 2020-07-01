class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :body
      t.string :image
      t.string :video
      t.string :audio
      t.string :file
      t.references :curse, null: false, foreign_key: true
      t.timestamps
    end
  end
end
