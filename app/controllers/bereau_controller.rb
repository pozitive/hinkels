class BereauController < ApplicationController
  def index
    @articles = Article.order(:title)
    @services = Service.order(:title)
    @activities = Activity.all.page(params[:page]).per(2)
    respond_to do |format|
      format.js
      format.html
    end
  end
  
  def activities
    @activities = Activity.all.page(params[:page]).per(1)
    respond_to do |format|
      format.js
      format.html
    end
  end
  
end
