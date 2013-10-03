ActiveAdmin.register Activity do

  controller do
    before_action :set_activity, only: [:show, :edit, :update, :destroy]

    def create
      @activity = Activity.new(activity_params)

      respond_to do |format|
        if @activity.save
          format.html { redirect_to admin_activities_path, notice: 'Activity was successfully created.' }
          format.json { render action: 'show', status: :created, location: @activity }
        else
          format.html { render action: 'new' }
          format.json { render json: @activity.errors, status: :unprocessable_entity }
        end
      end
    end

    def edit
    end

    def update
      respond_to do |format|
        if @activity.update(activity_params)
          format.html { redirect_to admin_activities_path, notice: 'Activity was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @activity.errors, status: :unprocessable_entity }
        end
      end
    end
    
    
    private
      def set_activity
        @activity = Activity.find(params[:id])
      end

      def activity_params
        params.require(:activity).permit(:title, :description)
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
