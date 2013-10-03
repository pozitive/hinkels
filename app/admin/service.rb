ActiveAdmin.register Service do

  controller do
    before_action :set_service, only: [:show, :edit, :update, :destroy]

    def create
      @service = Service.new(service_params)

      respond_to do |format|
        if @service.save
          format.html { redirect_to admin_services_path, notice: 'Service was successfully created.' }
          format.json { render action: 'show', status: :created, location: @service }
        else
          format.html { render action: 'new' }
          format.json { render json: @service.errors, status: :unprocessable_entity }
        end
      end
    end

    def edit
    end

    def update
      respond_to do |format|
        if @service.update(service_params)
          format.html { redirect_to admin_services_path, notice: 'Service was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @service.errors, status: :unprocessable_entity }
        end
      end
    end
    
    
    private
      def set_service
        @service = Service.find(params[:id])
      end

      def service_params
        params.require(:service).permit(:title, :description)
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
