class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :task_details
      t.date :due_date

      t.timestamps
    end
  end
end
