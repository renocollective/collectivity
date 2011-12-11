# More info at https://github.com/guard/guard#readme

group "spec" do
  # guard "annotate" do
  #   watch("db/schema.rb")
  #   # watch('app/collectivity/models/**/*.rb')
  #   # watch('config/routes.rb')
  # end

  guard "spork", :bundler => true, :rspec => true, :rspec_env => { "RAILS_ENV" => "test" } do
    watch('Gemfile')
    watch('Gemfile.lock')
    watch("config/application.rb")
    watch("config/environment.rb")
    watch(%r{^config/environments/.+\.rb$})
    watch(%r{^config/initializers/.+\.rb$})
    watch("spec/spec_helper.rb")
  end

  guard "rspec", :cli => "--color --drb", :all_on_start => false do
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch("spec/spec_helper.rb")                        { "spec/" }

    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
    watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
    watch(%r{^spec/support/(.+)\.rb$})                  { "spec/" }
    watch("config/routes.rb")                           { "spec/routing" }
    watch(%r{^spec/routing/(.+)$})                      { |m| "spec/routing/#{m[1]}" }
    watch("app/controllers/application_controller.rb")  { "spec/controllers" }

  end
end
