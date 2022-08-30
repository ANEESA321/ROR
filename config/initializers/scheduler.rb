require 'rufus-scheduler'
schedule = Rufus::Scheduler.new
schedule.every '1d' do
    task=Task.where("due_date <= ?",Time.now)
    if task.present?
        task.each do |task|
            UserMailer.with(user: User.find_by_id(task.userid),task: task).remainder.deliver_now
        end
    end
end