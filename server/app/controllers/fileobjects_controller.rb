class FileobjectsController < ApplicationController
  before_action :set_fileobject, only: [:show, :edit, :update, :destroy]

  # GET /fileobjects
  # GET /fileobjects.json
  def index
    @fileobjects = Fileobject.all
  end

  # GET /fileobjects/1
  # GET /fileobjects/1.json
  def show
  end

  # GET /fileobjects/new
  def new
    @fileobject = Fileobject.new
    @fileobject.uuid = SecureRandom.uuid
    
    if params[:type] == "consolidation"
      @fileobject.consolidation = params[:uuid]
    end
    
  end

  # GET /fileobjects/1/edit
  def edit
    
  end

  # POST /fileobjects
  # POST /fileobjects.json
  def create
    @fileobject = Fileobject.new(fileobject_params)
    
    # Get the file uploaded file url.
    file = @fileobject.file.url
    
    if file != nil
      extension = @fileobject.file.file.extension.downcase
      
      if %w{jpg png gif bmp jpeg tif tiff}.include?(extension)
        @fileobject.file_type = "Image"
      elsif %w{wave mp3}.include?(extension)
        @fileobject.file_type = "Sound"
      end
      
      cid = @fileobject.consolidation
      mid = @fileobject.material
      
      if mid != ""
        parent = "material"
      elsif cid != ""
        parent = "consolidation"
      end
      
      respond_to do |format|
        if @fileobject.save
          if parent == "consolidation"
            consolidation = Consolidation.where(uuid: cid).first
            prj_uuid = consolidation.project
            project = Project.where(uuid: prj_uuid).first
            prj_id = project.id
            
            format.html { redirect_to consolidation_url(consolidation, params: {:lid => prj_id}), notice: 'File was successfully created.'}
            format.json { render :show, status: :created, location: @fileobject }
          end
        else
          format.html { render :new }
          format.json { render json: @fileobject.errors, status: :unprocessable_entity }
        end
      end
    
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @fileobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fileobjects/1
  # PATCH/PUT /fileobjects/1.json
  def update
    respond_to do |format|
      if @fileobject.update(fileobject_params)
        format.html { redirect_to @fileobject, notice: 'Fileobject was successfully updated.' }
        format.json { render :show, status: :ok, location: @fileobject }
      else
        format.html { render :edit }
        format.json { render json: @fileobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fileobjects/1
  # DELETE /fileobjects/1.json
  def destroy
    @fileobject.destroy
    respond_to do |format|
      format.html { redirect_to fileobjects_url, notice: 'Fileobject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fileobject
      @fileobject = Fileobject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fileobject_params
      params.require(:fileobject).permit(:uuid, :consolidation, :material, :created_date, :modified_date, :file, :file_type, :alias_name, :status, :make_public, :is_locked, :source, :file_operation, :operating_application, :caption, :description, :flickr_photoid, :file_cache)
    end
end
