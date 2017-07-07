class UserMailer < ApplicationMailer
  default from: "janoutreffers@gmail.com"

    def contact_form(email, name, message)
      @message = message

      mail(from: email,
           to: 'janoutreffers@gmail.com',
           subject: "A new contact form message from #{name}")
    end

  def welcome_mail(user)
    @user = user
    mail to: user.email, subject: "Welcome to Happy Bikeshop"
  end
end
