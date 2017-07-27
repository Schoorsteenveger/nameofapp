class UserMailer < ApplicationMailer
  default from: "janoutreffers@gmail.com"

    def contact_form(email, name, message)
      @name = name
      @message = message

      mail(from: email,
           to: 'janoutreffers@gmail.com',
           subject: "A new contact form message from #{name}")
    end

  def welcome(user)
    @user = user
    mail to: user.email, subject: "Welcome to Happy Bikeshop"
  end
end
