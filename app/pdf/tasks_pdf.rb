class TasksPdf < Prawn::Document
    def initialize(tasks)
        super()
        @tasks = Task.all
        user_id
    end
    def user_id
        table user_id_all   
    end
    def user_id_all
        [["Name","Task details","Due Date","Status"]] +
        @tasks.map do |task|
            if task.status == true
                    status = "Completed"
                else
                    status = "Pending"
                end
            [task.name,task.task_details,task.due_date,status]
        end
    end
end