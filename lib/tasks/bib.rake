namespace :bib do
  desc 'bundle exec rake in `Bundler.clean_system`'
  task :rake, ['stop'] => :environment do |task, args|
    p 'bundle exec rake in `Bundler.clean_system`'
    exit 0 if args['stop']
    Bundler.clean_system('bundle exec rake bib:rake[true]')
  end

  desc 'bundle exec rails in `Bundler.clean_system`'
  task :rails, ['stop'] => :environment do |task, args|
    p 'bundle exec rails in `Bundler.clean_system`'
    exit 0 if args['stop']
    Bundler.clean_system('bundle exec rails bib:rails[true]')
  end
end
