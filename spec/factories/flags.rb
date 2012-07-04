# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :flag do
    service "MyString"
    site_id 1
    status "MyString"
  end
end
