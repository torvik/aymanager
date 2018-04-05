class AddUserIdToImprovements < ActiveRecord::Migration[5.1]
  def change
    add_column :improvements, :user_id, :integer
    add_index :improvements, :user_id
  end
end
