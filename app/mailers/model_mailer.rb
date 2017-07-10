class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  def new_record_notification(email)
    @email = email
    @name = email.name
    @mail = email.email
    @message = email.message
    mail to: 'rr5ys5s@gmail.com' , subject: @email.message

  end
end
