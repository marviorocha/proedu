class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :body
      t.string :doc
      t.datetime :publish_on
      t.boolean :publish, default: false
      t.timestamps
    end
  end
end
