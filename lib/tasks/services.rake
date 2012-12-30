namespace :services do
  task :create do
    @sites = Site.all
    @service_types = ServiceTypes.all
    for site in @sites do
      for servicetype in @service_types do
        site.services.create(
          name: "Site #{site.number} #{servicetype.name}",
          port: servicetype.port
          )
      end
    end
  end
end
