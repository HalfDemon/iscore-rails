# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service do
    name "MyString"
    port 1
    subdomain "MyString"
    site_id 1
  end
end
