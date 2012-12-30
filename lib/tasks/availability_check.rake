namespace :availabilitycheck do
  task :create do
    puts "How many minutes between each check?"
    puts "Examples"
    puts ""
    puts "If you want to check every 10 minutes enter 10"
    puts "If you want to check every 15 mintues enter 15"
    puts "If you want tp check every hour enter 60"
    puts ""
    puts ""
    puts "Enter the amount time between each scan in mintues"
    puts "Can't less than 5 minutes to ensure proper performace"
  end
end
