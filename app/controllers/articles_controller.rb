class ArticlesController < ApplicationController

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
  
  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end
  
  def destroy
    @article.destroy
    redirect_to articles_path
  end
  

end
