class BereauController < ApplicationController
  def index
    @articles = Article.order(:title)
  end
end
