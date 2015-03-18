class RimesController < ApplicationController
	before_action :set_rime, only: [:show, :edit, :update, :destroy]

	# GET /rimes
	# GET /rimes.json
	def index
		@rimes = Rime.paginate(:page => params[:page], :per_page => 10 ).order('date DESC')
		#	@rimes = Rime.all
	end

	# GET /rimes/1
	# GET /rimes/1.json
	def show
	end

	# GET /rimes/new
	def new
		@rime = Rime.new
	end

	# GET /rimes/1/edit
	def edit
	end

	# POST /rimes
	# POST /rimes.json
	def create
		@rime = Rime.new(rime_params)

		respond_to do |format|
			if @rime.save
				format.html { redirect_to @rime, notice: 'Rime was successfully created.' }
				format.json { render :show, status: :created, location: @rime }
			else
				format.html { render :new }
				format.json { render json: @rime.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /rimes/1
	# PATCH/PUT /rimes/1.json
	def update
		respond_to do |format|
			if @rime.update(rime_params)
				format.html { redirect_to @rime, notice: 'Rime was successfully updated.' }
				format.json { render :show, status: :ok, location: @rime }
			else
				format.html { render :edit }
				format.json { render json: @rime.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /rimes/1
	# DELETE /rimes/1.json
	def destroy
		@rime.destroy
		respond_to do |format|
			format.html { redirect_to rimes_url, notice: 'Rime was successfully destroyed.' }
			format.json { head :no_content }
		end
	end


	def import
		Rime.import(params[:file])
		redirect_to rimes_path, notice: "Data Imported."
	end

	def summary
		require 'descriptive_statistics'
		@sdate = params['sdate'].first
		@edate = params['edate'].first
		@r_sdate = @sdate.to_date.strftime("%Y-%m-01")
		@r_edate = @edate.to_date.strftime("%Y-%m-31")
		@datasets = Rime.where(date: @sdate..@edate)
		@data_n = @datasets.size

		#		@total_issue_quantity = @publish_summary.sum(:quantity)
		#		@total_free_copy =  @publish_summary.sum(:free_copy) 
		#		@total_quantity = @total_issue_quantity + @total_free_copy
		#		@total_return = Issue::Return.where( date: @r_sdate..@r_edate )
		#		@total_return_quantity = @total_return.sum(:qty)
		#		@total_return_month = @total_return.group_by { |r| r.date.beginning_of_month  }
		#		@total_return_type_group = @total_return.group_by { |r| r.c_code[0].upcase  }
		#		@customers_group = @customers_summary.group_by { |c|c.c_code }
		#		@customers_group_type = @customers_summary.group_by { |c|c.c_code[0].upcase }
	end



	private
	# Use callbacks to share common setup or constraints between actions.
	def set_rime
		@rime = Rime.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def rime_params
		params.require(:rime).permit(:date, :data1, :data2, :data3, :data4, :data5)
	end
end
