# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usability_report do
    name "MyString"
    start_time "2012-12-24 13:22:59"
    end_time "2012-12-24 13:22:59"
    speical_instructions "MyText"
  end
end
