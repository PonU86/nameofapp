require 'rails_helper'

describe User do
  let(:user) { User.create!(email: "testing@gmail.com", password: "password") }


  it "should not validate users without an email addrees" do
    @user = FactoryBot.build(:user, email: "not_an_email")
    expect(@user).to_not_be_valid
  end
end
