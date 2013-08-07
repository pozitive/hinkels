class BereauController < ApplicationController
  def index
    @articles = Article.order(:title)
    @services = Service.order(:title)
  end
end
