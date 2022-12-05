namespace :batch do
  desc "TODO"
  task send_email: :environment do
    EmailWorker.perform_in(10.seconds)
  end

end
