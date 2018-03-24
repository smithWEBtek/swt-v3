namespace :db do
	desc 'copy db/data.yml, rename with timestamp, save in db/data folder'
	task store_data_yml: :environment do
		puts 'copy db/data.yml, rename with timestamp, save in db/data folder...'
		exec "cp db/data.yml db/data/data_yml_#{Time.now.strftime("%s")}.yml"
  end
end