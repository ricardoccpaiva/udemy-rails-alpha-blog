class PagesController < ApplicationController

  def home
    article = Article.new(title: "Titalu 1", description: "desc 1")
    article.save
  end

  def about
  
  end
end