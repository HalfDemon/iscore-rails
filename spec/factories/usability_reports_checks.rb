# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usability_reports_check do
    work false
    site site
    service service
    use "MyString"
    usability_reports_submission nil
  end
end
