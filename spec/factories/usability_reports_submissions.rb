# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usability_reports_submission do
    site_id 1
    comments "MyString"
    done_by 1
  end
end
