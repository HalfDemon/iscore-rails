# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "mburket"
    name "Matthew Burket"
    password "MyString"
    admin false
    team "Blue"
  end

  factory :admin_user, class: User do
    username "mburket"
    name "Matthew Burket"
    password "MyString"
    admin true
    team "Blue"
  end
end
