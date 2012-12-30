namespace :services do
  task :create do
    @sites = Site.all
    @service_types = ServiceTypes.all
    for site in @sites do
    end
  end
end
