class General::NoticesController < ApplicationController
  before_action :set_general_notice, only: [:show, :edit, :update, :destroy]

  # GET /general/notices
  # GET /general/notices.json
  def index
    @general_notices = General::Notice.all
  end

  # GET /general/notices/1
  # GET /general/notices/1.json
  def show
  end

  # GET /general/notices/new
  def new
    @general_notice = General::Notice.new
  end

  # GET /general/notices/1/edit
  def edit
  end

  # POST /general/notices
  # POST /general/notices.json
  def create
    @general_notice = General::Notice.new(general_notice_params)

    respond_to do |format|
      if @general_notice.save
        format.html { redirect_to @general_notice, notice: 'Notice was successfully created.' }
        format.json { render :show, status: :created, location: @general_notice }
      else
        format.html { render :new }
        format.json { render json: @general_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /general/notices/1
  # PATCH/PUT /general/notices/1.json
  def update
    respond_to do |format|
      if @general_notice.update(general_notice_params)
        format.html { redirect_to @general_notice, notice: 'Notice was successfully updated.' }
        format.json { render :show, status: :ok, location: @general_notice }
      else
        format.html { render :edit }
        format.json { render json: @general_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general/notices/1
  # DELETE /general/notices/1.json
  def destroy
    @general_notice.destroy
    respond_to do |format|
      format.html { redirect_to general_notices_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general_notice
      @general_notice = General::Notice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_notice_params
      params.require(:general_notice).permit(:date, :title, :notice, :operator, :e_date)
    end
end
