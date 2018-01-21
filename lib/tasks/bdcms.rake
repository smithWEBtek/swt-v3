namespace :db do
  desc 'backup, drop, create, migrate, seed the db, restart rails'
  task bdcms: :environment do
    puts 'starting backup ....'
    Rake::Task['db:backup'].invoke
    
    puts 'creating db....'
    Rake::Task['db:dcms'].invoke
    
   
  end
end

