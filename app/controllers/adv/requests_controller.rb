class Adv::RequestsController < ApplicationController

	before_action :set_adv_request, only: [:show, :edit, :update, :destroy]

	# GET /adv/requests
	# GET /adv/requests.json
	def index
		@adv_requests = Adv::Request.paginate(:page => params[:page], :per_page => 3 )	
	end

	# GET /adv/requests/1
	# GET /adv/requests/1.json
	def show
	end

	# GET /adv/requests/new
	def new
		@adv_request = Adv::Request.new
	end

	# GET /adv/requests/1/edit
	def edit
	end

	# POST /adv/requests
	# POST /adv/requests.json
	def create
		@adv_request = Adv::Request.new(adv_request_params)

		respond_to do |format|
			if @adv_request.save
				format.html { redirect_to @adv_request, notice: 'Request was successfully created.' }
				format.json { render :show, status: :created, location: @adv_request }
			else
				format.html { render :new }
				format.json { render json: @adv_request.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /adv/requests/1
	# PATCH/PUT /adv/requests/1.json
	def update
		respond_to do |format|
			if @adv_request.update(adv_request_params)
				format.html { redirect_to @adv_request, notice: 'Request was successfully updated.' }
				format.json { render :show, status: :ok, location: @adv_request }
			else
				format.html { render :edit }
				format.json { render json: @adv_request.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /adv/requests/1
	# DELETE /adv/requests/1.json
	def destroy
		@adv_request.destroy
		respond_to do |format|
			format.html { redirect_to adv_requests_url }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_adv_request
		@adv_request = Adv::Request.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def adv_request_params
		params.require(:adv_request).permit(
			:code, :c_name, :a_size, :a_type, 
			:article, :submit_by, :order_taker, 
			:confirm_by, :status, :designer, 
			:p_type, :remark, 
			pdates_attributes: [:id, :request_id, :p_date, :p_layout, :remark, :_destroy], 
			originalsources_attributes: [:id, :request_id, :image, :_destroy], 
			finaldesigns_attributes: [:id, :request_id, :upload_by, :final, :remark, :_destroy] 
		)
	end
end
