class CreateRuns < ActiveRecord::Migration[5.2]
  def change
    create_table :runs do |t|
      t.string :distance
      t.string :date
      t.string :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
