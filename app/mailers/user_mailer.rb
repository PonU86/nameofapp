class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(email, name, message)
    @message = message
      mail(from: email,
            to: 'hostetlerp@gmail.com',
            subject: "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Bike Shop"
    mail(to: user.email,
          subject: "Welcome to #{@appname}!")
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end

  def order_placed(user, product)
    return if user.nil?
    @user = user
    @product = product
    mail(to: user.email,
          subject: "Thanks for your order!")
  end
end
