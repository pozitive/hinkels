ActiveAdmin.register Publication do

  controller do
    before_action :set_publication, only: [:show, :edit, :update, :destroy]

    def create
      @publication = Publication.new(publication_params)

      respond_to do |format|
        if @publication.save
          format.html { redirect_to admin_publications_path, notice: 'Publication was successfully created.' }
          format.json { render action: 'show', status: :created, location: @publication }
        else
          format.html { render action: 'new' }
          format.json { render json: @publication.errors, status: :unprocessable_entity }
        end
      end
    end

    def edit
    end

    def update
      respond_to do |format|
        if @publication.update(publication_params)
          format.html { redirect_to admin_publications_path, notice: 'Publication was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @publication.errors, status: :unprocessable_entity }
        end
      end
    end
    
    
    private
      def set_publication
        @publication = Publication.find(params[:id])
      end

      def publication_params
        params.require(:publication).permit(:title, :description)
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
