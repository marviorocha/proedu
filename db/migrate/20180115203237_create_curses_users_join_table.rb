class CreateCursesUsersJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :curses, :users do |t|
       t.index [:curse_id, :user_id]
       t.index [:user_id, :curse_id]
    end
  end
end
