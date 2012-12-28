# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service_type do
    name "MyString"
    port 1
    description 1
  end
end
