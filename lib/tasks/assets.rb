desc "precompile the assets"
task :precompile_assets, :roles => :web, :except => { :no_release => true } do
  run "cd #{current_path}; rm -rf public/assets/*"
  run "cd #{current_path}; RAILS_ENV=production bundle exec rake assets:precompile"
end