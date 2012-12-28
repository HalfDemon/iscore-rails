# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :availability_service_check do
    service nil
    availability_check nil
    site nil
    available false
  end
end
