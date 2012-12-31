namespace :flag do
  task :create => :environment do
    puts "This task creates the flags"
    puts ""
    puts ""
    @sites = Site.all
    for site in @sites do
      @site_services = site.services.all
        for service in @site_services do
          site.flag.create(
              content: create_flag_content 
            )
        end
    end
  end
end
