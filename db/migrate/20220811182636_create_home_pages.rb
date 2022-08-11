class CreateHomePages < ActiveRecord::Migration[7.0]
  def change
    create_table :home_pages do |t|
      t.string :tasks
      t.string :task_details
      t.date :date_of_task

      t.timestamps
    end
  end
end
