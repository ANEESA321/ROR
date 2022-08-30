class UserMailer < ApplicationMailer
 
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def task_assigned
    @user = params[:user]
    @task = params[:task]
    mail(to: @user.email, subject: "task  assigned")
  end
  def task_update
    @user = params[:user]
    @task = params[:task]
    mail(to: @user.email, subject: "task updated")
  end
  def remainder
    @user = params[:user]
    @task = params[:task]
    mail(to: @user.email, subject: "your task is pending")
  end
end
