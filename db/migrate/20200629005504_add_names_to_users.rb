class AddNamesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :avatar, :string
    add_column :users, :admin, :boolean
    add_column :users, :teacher, :boolean
    add_column :users, :student, :boolean
    add_column :users, :birthday, :date
  end
end
