class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

	# Used for viewing the article 
  def show
  	@article = Article.find(params[:id])
  end

	# It is used for creating a article 
	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		
		if @article.save
			redirect_to @article
		else
			render :new, status: :unprocessable_entity
		end
	end

	private
	def article_params
		params.require(:article).permit(:title, :body)
	end
end


	