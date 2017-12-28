class AddForeignKeyFromCategoriesToCurse < ActiveRecord::Migration[5.1]
  def change
    add_reference :curses, :category, foreign_key: true
  end
end
