class AddImprovementIdToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :improvement_id, :integer
  end
end
