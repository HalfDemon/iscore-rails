namespace :usabilityreports do
  task :create do
    puts "This task creates the Usability Reports for the competions"
    puts "How many minutes between each report?"
    puts "Examples"
    puts ""
    puts "If you want to check every hour enter 60"
    puts "If you want to check every hour and a half enter 90"
    puts "Can can also enter a differnt amount of time if you would perfer to."
    puts ""
    puts ""
    puts "Can't less than 60 minutes to ensure proper performace and quality reports for teams"
    minutes_between = $stdin.gets.chomp.to_i
    puts ""
    puts ""
    puts "Enter the CDC start time"
    puts "This will be the first scan time"
    puts "The format for field can be any of the follows:"
    puts "- 01/10/12 8:00 AM"
    puts "- Jan 10 12 8 AM"
    puts "- 01-10-12 08:00 AM"
    puts "- January 10, 2012 at 8 AM"
    start_time = Chronic.parse($stdin.gets.chomps)
    puts ""
    puts ""
    puts "Enter the CDC End Time"
    puts "Same Instructions as for start time"
    end_time = Chronic.parse($stdin.gets.chomps)
    puts ""
    puts "Work Time......."
    puts "The script is working to create your Checks..."
    seconds_between = minutes_between * 60
    total_time = end_time - start_time
    nubmer_of_checks_unrounded = total_time / second_between
    number_of_checks = nubmer_of_checks_unrounded.round
    current_run_time = start_time
    number_of_checks.times do
      AvailabilityCheck.create!(public_run_time: current_run_time)
      puts "Created Availability Check at #{current_run_time}"
      current_run_time += minutes_between.minutes
      puts ""
    end
  end
end
