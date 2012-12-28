# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service do
    name "Web Server"
    port 80
    subdomain "www"
    site_id site
  end
end
