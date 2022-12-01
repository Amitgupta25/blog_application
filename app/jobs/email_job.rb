require File.join(Rails.root, "lib/email.rb")
class EmailJob < ApplicationJob
  sidekiq_options retry: 5
  queue_as :default

  def perform
    Email.email_update 
  end
end
