FactoryBot.define do



  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password "123456789"
    first_name "George"
    last_name "Smith"
    admin false
  end

end
