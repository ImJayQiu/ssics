class Issue::ProvincesController < ApplicationController
  before_action :set_issue_province, only: [:show, :edit, :update, :destroy]

  # GET /issue/provinces
  # GET /issue/provinces.json
  def index
    @issue_provinces = Issue::Province.all
  end

  # GET /issue/provinces/1
  # GET /issue/provinces/1.json
  def show
  end

  # GET /issue/provinces/new
  def new
    @issue_province = Issue::Province.new
  end

  # GET /issue/provinces/1/edit
  def edit
  end

  # POST /issue/provinces
  # POST /issue/provinces.json
  def create
    @issue_province = Issue::Province.new(issue_province_params)

    respond_to do |format|
      if @issue_province.save
        format.html { redirect_to @issue_province, notice: 'Province was successfully created.' }
        format.json { render :show, status: :created, location: @issue_province }
      else
        format.html { render :new }
        format.json { render json: @issue_province.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issue/provinces/1
  # PATCH/PUT /issue/provinces/1.json
  def update
    respond_to do |format|
      if @issue_province.update(issue_province_params)
        format.html { redirect_to @issue_province, notice: 'Province was successfully updated.' }
        format.json { render :show, status: :ok, location: @issue_province }
      else
        format.html { render :edit }
        format.json { render json: @issue_province.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issue/provinces/1
  # DELETE /issue/provinces/1.json
  def destroy
    @issue_province.destroy
    respond_to do |format|
      format.html { redirect_to issue_provinces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue_province
      @issue_province = Issue::Province.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_province_params
      params.require(:issue_province).permit(:code, :province, :area_id)
    end
end
