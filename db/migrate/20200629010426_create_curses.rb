class CreateCurses < ActiveRecord::Migration[6.0]
  def change
    create_table :curses do |t|
      t.string :name
      t.string :photo
      t.string :description
      t.timestamps
    end
  end
end
