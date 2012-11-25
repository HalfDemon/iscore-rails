# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :anomaly do
    name "MyString"
    description "MyText"
    due_time "2012-11-24 23:21:27"
  end
end
