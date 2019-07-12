class AddRunName < ActiveRecord::Migration[5.2]
  def change
    add_column :runs, :name, :string
  end
end
