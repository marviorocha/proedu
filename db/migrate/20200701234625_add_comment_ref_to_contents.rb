class AddCommentRefToContents < ActiveRecord::Migration[6.0]
  def change
    add_reference :contents, :comment, null: false, foreign_key: true
  end
end
