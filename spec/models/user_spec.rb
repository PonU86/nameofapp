require 'rails_helper'

describe User do
  context "testing validations" do

    it 'requires email address' do
      expect(User.new(first_name: "Clark", last_name: "Robbins", email: nil)).to_not be_valid
    end
  end
end
