class Adv::FinaldesignsController < ApplicationController
	before_action :set_adv_finaldesign, only: [:show, :edit, :update, :destroy]

	# GET /adv/finaldesigns
	# GET /adv/finaldesigns.json
	def index
		@adv_finaldesigns = Adv::Finaldesign.all
	end

	# GET /adv/finaldesigns/1
	# GET /adv/finaldesigns/1.json
	def show
	end

	# GET /adv/finaldesigns/new
	def new
		@adv_finaldesign = Adv::Finaldesign.new
	end

	# GET /adv/finaldesigns/1/edit
	def edit
	end

	# POST /adv/finaldesigns
	# POST /adv/finaldesigns.json
	def create
		@adv_finaldesign = Adv::Finaldesign.new(adv_finaldesign_params)

		respond_to do |format|
			if @adv_finaldesign.save
				format.html { redirect_to @adv_finaldesign, notice: 'Finaldesign was successfully created.' }
				format.json { render :show, status: :created, location: @adv_finaldesign }
			else
				format.html { render :new }
				format.json { render json: @adv_finaldesign.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /adv/finaldesigns/1
	# PATCH/PUT /adv/finaldesigns/1.json
	def update
		respond_to do |format|
			if @adv_finaldesign.update(adv_finaldesign_params)
				format.html { redirect_to @adv_finaldesign, notice: 'Finaldesign was successfully updated.' }
				format.json { render :show, status: :ok, location: @adv_finaldesign }
			else
				format.html { render :edit }
				format.json { render json: @adv_finaldesign.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /adv/finaldesigns/1
	# DELETE /adv/finaldesigns/1.json
	def destroy
		@adv_finaldesign.destroy
		respond_to do |format|
			format.html { redirect_to adv_finaldesigns_url }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_adv_finaldesign
		@adv_finaldesign = Adv::Finaldesign.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def adv_finaldesign_params
		params.require(:adv_finaldesign).permit(:request_id, :upload_by, :remark, :final)
	end
end
