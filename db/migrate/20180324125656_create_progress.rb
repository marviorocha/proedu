class CreateProgress < ActiveRecord::Migration[5.1]
  def change
    create_table :progresses do |t|
      t.references :content, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :progress
    end
  end
end
