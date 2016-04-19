# Preview all emails at http://localhost:3000/rails/mailers/model_mailer
class ModelMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/model_mailer/new_event_notification
  def new_event_notification
    ModelMailer.new_event_notification
  end

end
