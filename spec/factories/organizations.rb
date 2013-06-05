# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :organization do
    name "MyString"
    site_count 1
    city "MyString"
    state "MyString"
  end
end
