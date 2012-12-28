# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :availability_check do
    pubic_run_time "2012-12-27 21:11:02"
    actual_start_time "2012-12-27 21:11:02"
    actual_end_time "2012-12-27 21:11:02"
    number_of_services_up 1
    number_of_services_down 1
  end
end
