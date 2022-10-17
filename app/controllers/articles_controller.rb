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
	
	# It fetches the article from the database 
	def edit 
		@article  = Article.find(params[:id])
	end

	def update 
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@article = Article.find(params[:id])
		Article.destroy

		redirect_to root_path, status: :see_other

	private
	def article_params
		params.require(:article).permit(:title, :body)
	end
end


	