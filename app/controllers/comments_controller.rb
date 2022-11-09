class CommentsController < ApplicationController

  def index
    article = Article.find(params[:article_id])
    comment = article.comments 
    render(json: {article: article, comment: comment})
	end
  
  def show
    article = Article.find(params[:article_id])
    comment = article.comments.find(params[:id])
    render(json: comment)
  end

  def create
    article = Article.find(params[:article_id])
    comment = article.comments.create(comment_params)
    render(json: comment)
  end

  def destroy
    article = Article.find(params[:article_id])
    comment = article.comments.find_by(params[:id])
    if comment
      comment.destroy
      render(json: {message: 'comment deleted successfully'})
    else
      render(json: {message: 'No such comment present'})
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end