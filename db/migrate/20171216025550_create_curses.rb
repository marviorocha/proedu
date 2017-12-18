class CreateCurses < ActiveRecord::Migration[5.1]
  def change
    create_table :curses do |t|
      t.string :title
      t.string :descricao
      t.string :picture

      t.timestamps
    end
  end
end
