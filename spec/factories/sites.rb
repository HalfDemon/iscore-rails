# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :name do |n|
  	"Site #{n}"
  end

  sequence :number do |n|
  	"#{n}"
  end

  factory :site do
  	name
    organization "Iowa State University"
    points "0"
    number
  end
end
