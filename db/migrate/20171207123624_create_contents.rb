class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :body
      t.string :doc
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end