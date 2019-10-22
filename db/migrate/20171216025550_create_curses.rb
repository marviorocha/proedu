class CreateCurses < ActiveRecord::Migration[5.1]
  def change
    create_table :curses do |t|
      t.string :title
      t.string :descricao
      t.string :uid
      t.timestamps
    end
  end
end
