class SearchController < ApplicationController
  def index
    if params[:query].present?
      @articles     = Article.text_search(params[:query])
      @services     = Service.text_search(params[:query])
      @activities   = Activity.text_search(params[:query])
      @publications = Publication.text_search(params[:query])
      @search = @articles + @services +@activities + @publications
    end
  end

end
