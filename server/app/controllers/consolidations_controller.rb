class ConsolidationsController < ApplicationController
  before_action :set_consolidation, only: [:show, :edit, :update, :destroy]

  # GET /consolidations
  # GET /consolidations.json
  def index
    @consolidations = Consolidation.all.order(created_at: 'desc')
  end

  # GET /consolidations/1
  # GET /consolidations/1.json
  def show
    @fileobjects = Fileobject.where(consolidation: @consolidation.uuid)
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
        prj_uuid = @consolidation.project
        project = Project.where(uuid: prj_uuid).first
        
        format.html { redirect_to project_url(project), notice: 'Consolidation was successfully updated.'}
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
