# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :flag do
    content "MyText"
    site site
    captured false
    captured_flag "MyText"
    earned_back_points ""
    earned_back false
  end
end
