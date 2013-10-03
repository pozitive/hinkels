ActiveAdmin.register Article do

  controller do
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def create
      @article = Article.new(article_params)

      respond_to do |format|
        if @article.save
          format.html { redirect_to admin_articles_path, notice: 'Article was successfully created.' }
          format.json { render action: 'show', status: :created, location: @article }
        else
          format.html { render action: 'new' }
          format.json { render json: @article.errors, status: :unprocessable_entity }
        end
      end
    end

    def edit
    end

    def update
      respond_to do |format|
        if @article.update(article_params)
          format.html { redirect_to admin_articles_path, notice: 'Article was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @article.errors, status: :unprocessable_entity }
        end
      end
    end
    
    
    private
      def set_article
        @article = Article.find(params[:id])
      end

      def article_params
        params.require(:article).permit(:title, :description)
      end
      
  end
    
  form do |f|
    f.inputs do
      f.input :title
      f.input :description, as: :html_editor
    end

    f.buttons
  end


  
end
