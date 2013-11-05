class BereauController < ApplicationController
  def index
    @articles = Article.order(:title)
    @services = Service.order(:title)
    @activities = Activity.order(:created_at).page(params[:page]).per(2)
  end
end
