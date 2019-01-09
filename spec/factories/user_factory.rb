FactoryBot.define do
  sequence(:email) { |n| "person#{n}@example.com" }


  factory :user do
    email
    password "123456789"
    first_name "George"
    last_name "Smith"
    admin false
  end

  factory :amdin, class: User do
    email
    password "1234567890"
    admin true
    first_name "Smith"
    last_name "George"
  end

end
