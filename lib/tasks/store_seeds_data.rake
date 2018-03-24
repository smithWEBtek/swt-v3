namespace :db do
  desc 'rename and move data.yml file'
	task store_seeds_data: :environment do
		puts 'copy db/seeds.rb, rename with timestamp, save in db/data folder...'
		exec "cp db/seeds.rb db/data/seeds_data_#{Time.now.strftime("%s")}.rb"
  end
end