# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :checkout do
    sequence(:checked_out) {|n| n.days.ago}

    reader
    book
  end
end
