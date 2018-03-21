class CreateProgresses < ActiveRecord::Migration[5.1]
  def change
    create_table :progresses do |t|
      t.integer :progress, default: 0
      t.references :user, foreign_key: true
      t.references :content, foreign_key: true

      t.timestamps
    end
  end
end
