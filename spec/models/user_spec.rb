require 'rails_helper'

describe User do

  let(:user) { User.create!(email: "testing@gmail.com", password: "password") }
end
