class Issue::AreasController < ApplicationController
	before_action :set_issue_area, only: [:show, :edit, :update, :destroy]

	# GET /issue/areas
	# GET /issue/areas.json
	def index
		@issue_areas = Issue::Area.all
	end

	# GET /issue/areas/1
	# GET /issue/areas/1.json
	def show
	end

	# GET /issue/areas/new
	def new
		@issue_area = Issue::Area.new
	end

	# GET /issue/areas/1/edit
	def edit
	end

	# POST /issue/areas
	# POST /issue/areas.json
	def create
		@issue_area = Issue::Area.new(issue_area_params)

		respond_to do |format|
			if @issue_area.save
				format.html { redirect_to @issue_area, notice: 'Area was successfully created.' }
				format.json { render :show, status: :created, location: @issue_area }
			else
				format.html { render :new }
				format.json { render json: @issue_area.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /issue/areas/1
	# PATCH/PUT /issue/areas/1.json
	def update
		respond_to do |format|
			if @issue_area.update(issue_area_params)
				format.html { redirect_to @issue_area, notice: 'Area was successfully updated.' }
				format.json { render :show, status: :ok, location: @issue_area }
			else
				format.html { render :edit }
				format.json { render json: @issue_area.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /issue/areas/1
	# DELETE /issue/areas/1.json
	def destroy
		@issue_area.destroy
		respond_to do |format|
			format.html { redirect_to issue_areas_url }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_issue_area
		@issue_area = Issue::Area.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def issue_area_params
		params.require(:issue_area).permit(
			:code, :area, :remark,
			provinces_attributes: [:id, :area_id, :code, :_destroy], 
			cities_attributes: [:id, :province_id, :code, :_destroy] 
		)

	end
end
