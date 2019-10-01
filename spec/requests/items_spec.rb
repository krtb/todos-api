# not writing controller specs, writing REQUEST SPECS INSTEAD
FactoryBot.define do
  factory :item do
    name { Faker::StarWars.character }
    done {false}
    todo_id {nil}
  end
end