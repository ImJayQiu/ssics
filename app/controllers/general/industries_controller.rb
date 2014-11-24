class General::IndustriesController < ApplicationController
  before_action :set_general_industry, only: [:show, :edit, :update, :destroy]

  # GET /general/industries
  # GET /general/industries.json
  def index
    @general_industries = General::Industry.all
  end

  # GET /general/industries/1
  # GET /general/industries/1.json
  def show
  end

  # GET /general/industries/new
  def new
    @general_industry = General::Industry.new
  end

  # GET /general/industries/1/edit
  def edit
  end

  # POST /general/industries
  # POST /general/industries.json
  def create
    @general_industry = General::Industry.new(general_industry_params)

    respond_to do |format|
      if @general_industry.save
        format.html { redirect_to @general_industry, notice: 'Industry was successfully created.' }
        format.json { render :show, status: :created, location: @general_industry }
      else
        format.html { render :new }
        format.json { render json: @general_industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /general/industries/1
  # PATCH/PUT /general/industries/1.json
  def update
    respond_to do |format|
      if @general_industry.update(general_industry_params)
        format.html { redirect_to @general_industry, notice: 'Industry was successfully updated.' }
        format.json { render :show, status: :ok, location: @general_industry }
      else
        format.html { render :edit }
        format.json { render json: @general_industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general/industries/1
  # DELETE /general/industries/1.json
  def destroy
    @general_industry.destroy
    respond_to do |format|
      format.html { redirect_to general_industries_url, notice: 'Industry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general_industry
      @general_industry = General::Industry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_industry_params
      params.require(:general_industry).permit(:code, :tname, :cname, :ename, :remark)
    end
end
