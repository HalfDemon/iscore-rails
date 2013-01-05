# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :availability_service_check_false do
    service service
    availability_check availability_check
    site site
    available false
  end

  factory :availability_service_check_true do
    service service
    availability_check availability_check
    site site
    available false
  end

  factory :availability_service_check do
    service service
    availability_check availability_check
    site site
    available false
  end
end
