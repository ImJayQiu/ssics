class Adv::AdvsizesController < ApplicationController
  before_action :set_adv_advsize, only: [:show, :edit, :update, :destroy]

  # GET /adv/advsizes
  # GET /adv/advsizes.json
  def index
    @adv_advsizes = Adv::Advsize.all
  end

  # GET /adv/advsizes/1
  # GET /adv/advsizes/1.json
  def show
  end

  # GET /adv/advsizes/new
  def new
    @adv_advsize = Adv::Advsize.new
  end

  # GET /adv/advsizes/1/edit
  def edit
  end

  # POST /adv/advsizes
  # POST /adv/advsizes.json
  def create
    @adv_advsize = Adv::Advsize.new(adv_advsize_params)

    respond_to do |format|
      if @adv_advsize.save
        format.html { redirect_to @adv_advsize, notice: 'Advsize was successfully created.' }
        format.json { render :show, status: :created, location: @adv_advsize }
      else
        format.html { render :new }
        format.json { render json: @adv_advsize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adv/advsizes/1
  # PATCH/PUT /adv/advsizes/1.json
  def update
    respond_to do |format|
      if @adv_advsize.update(adv_advsize_params)
        format.html { redirect_to @adv_advsize, notice: 'Advsize was successfully updated.' }
        format.json { render :show, status: :ok, location: @adv_advsize }
      else
        format.html { render :edit }
        format.json { render json: @adv_advsize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adv/advsizes/1
  # DELETE /adv/advsizes/1.json
  def destroy
    @adv_advsize.destroy
    respond_to do |format|
      format.html { redirect_to adv_advsizes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adv_advsize
      @adv_advsize = Adv::Advsize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adv_advsize_params
      params.require(:adv_advsize).permit(:code, :advsize, :remark)
    end
end
