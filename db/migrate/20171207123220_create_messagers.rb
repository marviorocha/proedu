class CreateMessagers < ActiveRecord::Migration[5.1]
  def change
    create_table :messagers do |t|
      t.string :subject
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
