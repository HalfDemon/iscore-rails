# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "MyString"
    name "MyString"
    site nil
    password_digest "MyString"
    admin false
    team "MyString"
  end
end
