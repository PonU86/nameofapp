require 'rails_helper'

describe Order do

  let(:product) { Product.create!(name: "Testing order") }
  let(:user) {User.create!(email: "testing@gmail.com", password: "password") }
end
