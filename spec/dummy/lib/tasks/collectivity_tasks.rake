#
desc "Seed db with Engine seeds data"
task :seed_db => :environment do
  Collectivity::Engine.load_seed
end