class ApplicationMailer < ActionMailer::Base
  default from: 'janoutreffers@gmail.com'
  layout 'mailer'

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now

    ActionMailer::Base.mail(from: @email,
        to: 'your-email@example.com',
        subject: "A new contact form message from #{@name}",
        body: @message).deliver_now
  end
end
