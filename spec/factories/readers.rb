# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reader do
    sequence(:first_name) {|n| "J#{n}e"}
    sequence(:last_name) {|n| "Smith the #{n} yo"}
  end
end
