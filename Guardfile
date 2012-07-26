# A sample Guardfile
guard 'spork', :rspec_env => { 'RAILS_ENV' => 'test' } do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch('config/environments/test.rb')
  watch(%r{^config/initializers/.+\.rb$})
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb') { :rspec }
end

guard 'migrate' do
  watch(%r{^db/migrate/(\d+).+\.rb})
end


guard 'rails_best_practices' do
  watch(%r{^app/(.+)\.rb$})
end



