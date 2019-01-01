class UserMailerPreview < ActionMailer::UserMailer::Preview
  def contact_form
    UserMailer.contact_form("hostelterp@gmail.com", "Preston". "Hello World!")
  end
end
