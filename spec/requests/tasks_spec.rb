require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  #describe "GET /index" do
    #pending "add some examples (or delete) #{__FILE__}"
    it "task path" do
      get "/tasks"
      expect(response).to render_template("tasks/index")
    end
  
    it "task new" do
      get "/tasks/new"
      expect(response).to render_template("tasks/new")
    end
  
    it "task Edit" do
      task = Task.new
    
      task.name="Day6"
      task.due_date=DateTime.now +2.week
      task.status=false
      task.created_at=DateTime.now
      task.updated_at=DateTime.now
      
      task.save
      get "/tasks/1/edit"
      expect(response).to render_template('tasks/edit')
    end
end
