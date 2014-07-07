class Adv::PdatesController < ApplicationController
	before_action :set_adv_pdate, only: [:show, :edit, :update, :destroy]

	# GET /adv/pdates
	# GET /adv/pdates.json
	def index
		@adv_pdates = Adv::Pdate.all
	end

	# GET /adv/pdates/1
	# GET /adv/pdates/1.json
	def show
	end

	# GET /adv/pdates/new
	def new
		@adv_pdate = Adv::Pdate.new
	end

	# GET /adv/pdates/1/edit
	def edit
	end

	# POST /adv/pdates
	# POST /adv/pdates.json
	def create
		@adv_pdate = Adv::Pdate.new(adv_pdate_params)

		respond_to do |format|
			if @adv_pdate.save
				format.html { redirect_to @adv_pdate, notice: 'Pdate was successfully created.' }
				format.json { render :show, status: :created, location: @adv_pdate }
			else
				format.html { render :new }
				format.json { render json: @adv_pdate.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /adv/pdates/1
	# PATCH/PUT /adv/pdates/1.json
	def update
		respond_to do |format|
			if @adv_pdate.update(adv_pdate_params)
				format.html { redirect_to @adv_pdate, notice: 'Pdate was successfully updated.' }
				format.json { render :show, status: :ok, location: @adv_pdate }
			else
				format.html { render :edit }
				format.json { render json: @adv_pdate.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /adv/pdates/1
	# DELETE /adv/pdates/1.json
	def destroy
		@adv_pdate.destroy
		respond_to do |format|
			format.html { redirect_to adv_pdates_url }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_adv_pdate
		@adv_pdate = Adv::Pdate.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def adv_pdate_params
		params.require(:adv_pdate).permit(:request_id, :p_date, :p_layout, :remark)
	end
end
