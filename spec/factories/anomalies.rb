# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :anomaly, :class => 'Anomalie' do
    name "MyString"
    description "MyText"
    due_time "2012-11-24 23:01:57"
  end
end
