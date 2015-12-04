class SuperSecretResourcesController < ApplicationController
  before_action :set_super_secret_resource, only: [:show, :edit, :update, :destroy]

  # GET /super_secret_resources
  # GET /super_secret_resources.json
  def index
    @super_secret_resources = SuperSecretResource.all
  end

  # GET /super_secret_resources/1
  # GET /super_secret_resources/1.json
  def show
  end

  # GET /super_secret_resources/new
  def new
    @super_secret_resource = SuperSecretResource.new
  end

  # GET /super_secret_resources/1/edit
  def edit
  end

  # POST /super_secret_resources
  # POST /super_secret_resources.json
  def create
    @super_secret_resource = SuperSecretResource.new(super_secret_resource_params)

    respond_to do |format|
      if @super_secret_resource.save
        format.html { redirect_to @super_secret_resource, notice: 'Super secret resource was successfully created.' }
        format.json { render :show, status: :created, location: @super_secret_resource }
      else
        format.html { render :new }
        format.json { render json: @super_secret_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /super_secret_resources/1
  # PATCH/PUT /super_secret_resources/1.json
  def update
    respond_to do |format|
      if @super_secret_resource.update(super_secret_resource_params)
        format.html { redirect_to @super_secret_resource, notice: 'Super secret resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @super_secret_resource }
      else
        format.html { render :edit }
        format.json { render json: @super_secret_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_secret_resources/1
  # DELETE /super_secret_resources/1.json
  def destroy
    @super_secret_resource.destroy
    respond_to do |format|
      format.html { redirect_to super_secret_resources_url, notice: 'Super secret resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_super_secret_resource
      @super_secret_resource = SuperSecretResource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def super_secret_resource_params
      params.require(:super_secret_resource).permit(:name, :description)
    end
end
