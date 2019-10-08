# will be used by test suite to create test users
FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email {"foo@bar.com"}
    password {'foobar'}
  end
end