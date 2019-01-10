require 'rails_helper'

describe User do


  it "should not validate users without an email addrees" do
    @user = FactoryBot.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end

end
