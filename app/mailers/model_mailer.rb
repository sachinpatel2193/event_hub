class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_event_notification.subject
  #
  default from: "sapatel93@myeventhub.com"
  def new_event_notification(event, current_user)
    @greeting = "Hi,"
    @event = event
    @user = current_user
    mail(to: @user.email, subject: 'you have created new event')
  end
end
