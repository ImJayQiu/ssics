class Adv::AdvtypesController < ApplicationController
	before_action :set_adv_advtype, only: [:show, :edit, :update, :destroy]

	# GET /adv/advtypes
	# GET /adv/advtypes.json
	def index
		@adv_advtypes = Adv::Advtype.all
	end

	# GET /adv/advtypes/1
	# GET /adv/advtypes/1.json
	def show
	end

	# GET /adv/advtypes/new
	def new
		@adv_advtype = Adv::Advtype.new
	end

	# GET /adv/advtypes/1/edit
	def edit
	end

	# POST /adv/advtypes
	# POST /adv/advtypes.json
	def create
		@adv_advtype = Adv::Advtype.new(adv_advtype_params)

		respond_to do |format|
			if @adv_advtype.save
				format.html { redirect_to @adv_advtype, notice: 'Advtype was successfully created.' }
				format.json { render :show, status: :created, location: @adv_advtype }
			else
				format.html { render :new }
				format.json { render json: @adv_advtype.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /adv/advtypes/1
	# PATCH/PUT /adv/advtypes/1.json
	def update
		respond_to do |format|
			if @adv_advtype.update(adv_advtype_params)
				format.html { redirect_to @adv_advtype, notice: 'Advtype was successfully updated.' }
				format.json { render :show, status: :ok, location: @adv_advtype }
			else
				format.html { render :edit }
				format.json { render json: @adv_advtype.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /adv/advtypes/1
	# DELETE /adv/advtypes/1.json
	def destroy
		@adv_advtype.destroy
		respond_to do |format|
			format.html { redirect_to adv_advtypes_url }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_adv_advtype
		@adv_advtype = Adv::Advtype.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def adv_advtype_params
		params.require(:adv_advtype).permit(:code, :advtype, :remark)
	end
end
