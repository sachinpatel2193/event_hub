class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_event_notification.subject
  #
  def new_event_notification(greeting, current_user)
    @greeting = "Hi"

    mail to: current_user.email, subject: "Success! You Created a new event."
  end
end
