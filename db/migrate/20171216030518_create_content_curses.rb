class CreateContentCurses < ActiveRecord::Migration[5.1]
  def change
    create_table :content_curses do |t|
      t.references :curse, foreign_key: true
      t.references :content, foreign_key: true

      t.timestamps
    end
  end
end
