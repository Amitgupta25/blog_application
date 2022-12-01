class Email

  def self.email_update
		ArticleMailer.article_created.deliver_now
	end

end