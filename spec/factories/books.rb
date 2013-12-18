# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
        author
    sequence(:title) { |n| "John Smith's #{n} Book" }


  end
end
