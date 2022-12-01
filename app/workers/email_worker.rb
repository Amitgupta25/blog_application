# require_relative '../lib/email.rb'
require File.join(Rails.root, "lib/email.rb")

class EmailWorker
  
  include Sidekiq::Worker

  sidekiq_options retry: 5, timeout: 1.minutes

  def perform
    Email.email_update 
  end

end