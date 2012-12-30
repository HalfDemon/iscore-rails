namespace :availabilitycheck do
  task :create do
    puts "This task creates the service checks for the competions"
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
    minutes_between = $stdin.gets.chomp
    puts ""
    puts ""
    puts "Enter the CDC start time"
    puts "This will be the first scan time"
    puts "The format for field can be any of the follows:"
    puts "- 01/10/12 8:00 AM"
    puts "- Jan 10 12 8 AM"
    puts "- 01-10-12 08:00 AM"
    puts "- January 10, 2012 at 8 AM"
    start_time = $stdin.gets.chomps
    puts ""
    puts ""
    puts "Enter the CDC End Time"
    puts "Same Instructions as for start time"
    end_time = $stdin.gets.chomps
    puts ""
    puts "Work Time......."
    puts "The script is working to create your Checks..."
    total_time = end_time - start_time
  end
end
