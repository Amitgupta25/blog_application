class ArticlesController < ApplicationController

	def index
    render(json: Article.all)
	end

  def show
		render(json: Article.find(params[:id]))
  end

	def create
		article = Article.new(article_params)
		article.save
		render(json: article)
	end

	def update 
		article = Article.find(params[:id])
		if article
			article.update(article_params)
			render(json: {message: 'Updated Successfully'})
		else
			render(json: {message: 'No such article prsent'})
		end
	end

	def destroy
		article = Article.find(params[:id])
		if article
			article.destroy
			render(json: {message: 'Article deleted successfully'})
		else
			render(json: {message: 'No such article present'})
		end
	end

	private
	def article_params
		params.require(:article).permit(:title, :body, :status)
	end
end


	