class AddUserIdToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :userid, :integer
    add_index :tasks, :userid
  end
end
