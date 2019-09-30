# will contain model factories which will provide the test data
FactoryBot.define do
  factory :todo do
    title { Faker::Lorem.word }
    created_by { Faker::Number.number(10) }
  end
end

# wrapping faker methods in a block
# ensures that faker generates dynamic data each time
# factory is invoked