class MaterialsController < ApplicationController
  before_action :set_material, only: [:show, :edit, :update, :destroy]
  
  PER = 10
  
  # GET /materials
  # GET /materials.json
  def index
    @materials = Material.all
  end

  # GET /materials/1
  # GET /materials/1.json
  def show
    @fileobjects = Fileobject.where(material: @material.uuid).page(params[:page]).per(PER)
  end

  # GET /materials/new
  def new
    @material = Material.new
    @material.uuid = SecureRandom.uuid
    @material.consolidation = params[:consolidation]
  end

  # GET /materials/1/edit
  def edit
  end

  # POST /materials
  # POST /materials.json
  def create
    @material = Material.new(material_params)
    
    respond_to do |format|
      if @material.save
        format.html {
          redirect_to consolidation_url(
                                            :id => params[:material][:cid],
                                            params: {
                                              :lid => params[:material][:pid]
                                            }
                                          ),
              notice: 'File was successfully created.'}
          
        format.json { render :show, status: :created, location: @material }
      else
        format.html { render :new }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to @material, notice: 'Material was successfully updated.' }
        format.json { render :show, status: :ok, location: @material }
      else
        format.html { render :edit }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    # Delete files related to the material.
    fileobjects = Fileobject.where(material: @material.uuid)
    fileobjects.each do |fileobject|
      fileobject.destroy
    end
    
    # Delete the material.
    @material.destroy
    respond_to do |format|
      format.html { redirect_to consolidation_url(:id => params[:cid], params: {:lid => params[:pid]}),
          notice: 'Fileobject was successfully destroyed.'
        }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = Material.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_params
      params.require(:material).permit(:uuid, :consolidation, :name, :material_number, :estimated_period_beginning, :estimated_period_peak, :estimated_period_ending, :latitude, :longitude, :altitude, :description)
    end
end
