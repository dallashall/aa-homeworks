class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    mail(to: user.email, subject: 'Welcome, and give us your money!')
  end
end
