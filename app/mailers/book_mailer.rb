class BookMailer < ApplicationMailer
	def create_book_email(user)
		
    @user = user

    @url  = 'http://example.com/login'

    mail(to: @user.email, subject: 'Book created')

  end
end
