namespace :user do
  desc "Rebuild Auth-Tokens"
  task :rebuild_auth_token => :environment do
    User.transaction do
      User.all.each { |u|
        u.generate_token(:unlock_token)
        u.save!
      }
    end
  end
end
