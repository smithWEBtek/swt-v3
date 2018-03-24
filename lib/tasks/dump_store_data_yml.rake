namespace :db do
  desc 'dump to data.yml, rename and move file'
  task dump_store_data_yml: :environment do
		puts 'back up data to data.yml...'
    exec "rake db:dump && rake db:store_data_yml"
  end
end
