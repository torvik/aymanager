class DropTasks1 < ActiveRecord::Migration[5.1]
  def change
    drop_table :tasks
  end
end
