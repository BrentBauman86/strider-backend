class ChangeUserIdToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :runs, :user_id, :integer 
  end
end
