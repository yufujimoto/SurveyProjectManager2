class ConsolidationsController < ApplicationController
  before_action :set_consolidation, only: [:show, :edit, :update, :destroy]
  
  PER = 10
  
  # GET /consolidations
  # GET /consolidations.json
  def index
    @consolidations = Consolidation.all.order(created_at: 'desc')
  end

  # GET /consolidations/1
  # GET /consolidations/1.json
  def show
    @fileobjects = Fileobject.where(consolidation: @consolidation.uuid, material:"").page(params[:page]).per(PER)
    @materials = Material.where(consolidation: @consolidation.uuid).page(params[:page]).per(PER)
  end

  # GET /consolidations/new
  def new
    @consolidation = Consolidation.new
    @consolidation.uuid = SecureRandom.uuid
    @consolidation.project = params[:project]
  end

  # GET /consolidations/1/edit
  def edit
  end

  # POST /consolidations
  # POST /consolidations.json
  def create
    @consolidation = Consolidation.new(consolidation_params)

    respond_to do |format|
      if @consolidation.save
        prj_uuid = @consolidation.project
        project = Project.where(uuid: prj_uuid).first
        
        format.html { redirect_to project_url(project), notice: 'Consolidation was successfully created.'}
        format.json { render :show, status: :created, location: @consolidation }
      else
        format.html { render :new }
        format.json { render json: @consolidation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consolidations/1
  # PATCH/PUT /consolidations/1.json
  def update
    respond_to do |format|
      if @consolidation.update(consolidation_params)
        logger.debug(params)
        format.html {
          redirect_to consolidation_url(
                                          :id => @consolidation.id,
                                          params: {
                                            :lid => params[:consolidation][:pid]
                                          }
                                       ),
          notice: 'Consolidation was successfully updated.'}
        format.json { render :show, status: :ok, location: @consolidation }
      else
        format.html { render :edit }
        format.json { render json: @consolidation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consolidations/1
  # DELETE /consolidations/1.json
  def destroy
    materials = Material.where(consolidation: @consolidation.uuid)
    materials.each do |material|
      material.destroy
    end
    
    fileobjects = Fileobject.where(consolidation: @consolidation.uuid)
    fileobjects.each do |fileobject|
      fileobject.destroy
    end
    
    @consolidation.destroy
    respond_to do |format|
      prj_uuid = @consolidation.project
      project = Project.where(uuid: prj_uuid).first
      
      format.html { redirect_to project_url(project), notice: 'Consolidation was successfully destroyed.'}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consolidation
      @consolidation = Consolidation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consolidation_params
      params.require(:consolidation).permit(:uuid, :name, :geographic_annotation, :temporal_annotation, :description, :flickr_photosetid, :project)
    end
end
