class PagesController < ApplicationController

  
  def home
    article = Article.new(title: "Titalu 1", description: "desc 1")
    article.save
  end

  def about
    article = Article.find(1)
    article.description = "new desc 1"
    article.save

    article = Article.find(2)
    article.destroy
  end
end
