class ChangeDate < ActiveRecord::Migration[5.2]
  def change
    change_column :runs, :date, :date 
  end
end
