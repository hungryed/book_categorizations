# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :author do
    first_name "John"
    sequence(:last_name) { |n| "#{n} Smith" }
  end
end
