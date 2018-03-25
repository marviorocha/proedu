class AddPublishToContent < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :publish_on, :datetime
    add_column :contents, :days, :integer, default: 1
  end
end
