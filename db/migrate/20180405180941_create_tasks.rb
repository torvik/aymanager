class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :content
      t.integer :hora_gastas
      t.references :improvements, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
