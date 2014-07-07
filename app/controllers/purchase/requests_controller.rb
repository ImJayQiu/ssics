class Purchase::RequestsController < ApplicationController
  before_action :set_purchase_request, only: [:show, :edit, :update, :destroy]

  # GET /purchase/requests
  # GET /purchase/requests.json
  def index
    @purchase_requests = Purchase::Request.all
  end

  # GET /purchase/requests/1
  # GET /purchase/requests/1.json
  def show
  end

  # GET /purchase/requests/new
  def new
    @purchase_request = Purchase::Request.new
  end

  # GET /purchase/requests/1/edit
  def edit
  end

  # POST /purchase/requests
  # POST /purchase/requests.json
  def create
    @purchase_request = Purchase::Request.new(purchase_request_params)

    respond_to do |format|
      if @purchase_request.save
        format.html { redirect_to @purchase_request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @purchase_request }
      else
        format.html { render :new }
        format.json { render json: @purchase_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchase/requests/1
  # PATCH/PUT /purchase/requests/1.json
  def update
    respond_to do |format|
      if @purchase_request.update(purchase_request_params)
        format.html { redirect_to @purchase_request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchase_request }
      else
        format.html { render :edit }
        format.json { render json: @purchase_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase/requests/1
  # DELETE /purchase/requests/1.json
  def destroy
    @purchase_request.destroy
    respond_to do |format|
      format.html { redirect_to purchase_requests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_request
      @purchase_request = Purchase::Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchase_request_params
      params.require(:purchase_request).permit(:code, :p_name, :quantity, :unit, :request_date, :estimate_price, :submit_by, :p_confirm, :p_plan, :p_location, :p_net_price, :p_vat, :p_total_price, :w_location, :operator)
    end
end
