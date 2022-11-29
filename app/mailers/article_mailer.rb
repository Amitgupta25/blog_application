class ArticleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.article_mailer.article_created.subject
  #
  def article_created
    @greeting = "Hi"

    mail(
      from: "supportblogapp@gmail.com",
      to: "ag09754945531@gmail.com",
      # to send the email to all we can use cc: "email_of _the_desired_person"
      subject: "New article created"  
    ) 
  end
end
