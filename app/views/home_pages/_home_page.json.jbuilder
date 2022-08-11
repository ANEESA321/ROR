json.extract! home_page, :id, :tasks, :task_details, :date_of_task, :created_at, :updated_at
json.url home_page_url(home_page, format: :json)
