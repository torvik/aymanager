class CreateRequesters < ActiveRecord::Migration[5.1]
  def change
    create_table :requesters do |t|
      t.string :name

      t.timestamps
    end
  end
end
