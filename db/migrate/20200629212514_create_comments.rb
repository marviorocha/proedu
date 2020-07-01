class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :subject
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
