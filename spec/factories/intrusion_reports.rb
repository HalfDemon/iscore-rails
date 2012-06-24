# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :intrusion_report do
    subject "MyString"
    team_id 1
    content "MyString"
  end
end
