class Adv::OriginalsourcesController < ApplicationController
  before_action :set_adv_originalsource, only: [:show, :edit, :update, :destroy]

  # GET /adv/originalsources
  # GET /adv/originalsources.json
  def index
    @adv_originalsources = Adv::Originalsource.all
  end

  # GET /adv/originalsources/1
  # GET /adv/originalsources/1.json
  def show
  end

  # GET /adv/originalsources/new
  def new
    @adv_originalsource = Adv::Originalsource.new
  end

  # GET /adv/originalsources/1/edit
  def edit
  end

  # POST /adv/originalsources
  # POST /adv/originalsources.json
  def create
    @adv_originalsource = Adv::Originalsource.new(adv_originalsource_params)

    respond_to do |format|
      if @adv_originalsource.save
        format.html { redirect_to @adv_originalsource, notice: 'Originalsource was successfully created.' }
        format.json { render :show, status: :created, location: @adv_originalsource }
      else
        format.html { render :new }
        format.json { render json: @adv_originalsource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adv/originalsources/1
  # PATCH/PUT /adv/originalsources/1.json
  def update
    respond_to do |format|
      if @adv_originalsource.update(adv_originalsource_params)
        format.html { redirect_to @adv_originalsource, notice: 'Originalsource was successfully updated.' }
        format.json { render :show, status: :ok, location: @adv_originalsource }
      else
        format.html { render :edit }
        format.json { render json: @adv_originalsource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adv/originalsources/1
  # DELETE /adv/originalsources/1.json
  def destroy
    @adv_originalsource.destroy
    respond_to do |format|
      format.html { redirect_to adv_originalsources_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adv_originalsource
      @adv_originalsource = Adv::Originalsource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adv_originalsource_params
      params.require(:adv_originalsource).permit(:request_id, :image)
    end
end
