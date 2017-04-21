namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app swt-v3 --confirm swt-v3
      heroku run rake db:migrate --app swt-v3
      heroku run rake db:seed --app swt-v3')
  end
end
