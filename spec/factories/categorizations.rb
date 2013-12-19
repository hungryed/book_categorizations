# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :categorizations do
    book
    category
  end
end
