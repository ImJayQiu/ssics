class Issue::PublishesController < ApplicationController
	before_action :set_issue_publish, only: [:show, :edit, :update, :destroy]
	layout :action_layout 

	# GET /issue/publishes
	# GET /issue/publishes.json
	def index
		@issue_publishes = Issue::Publish.paginate(:page => params[:page], :per_page => 20 ).order('date DESC')
		@new_id = @issue_publishes.last.id rescue nil
	end
	# GET /issue/publishes/1
	# GET /issue/publishes/1.json

	def plabel

		@group_c_type = params[:c_type].first
		#		@issue_publish_select = Issue::Publish.includes(:cpublishes).find(params[:id])
		@issue_publish_select = Issue::Cpublish.where(publish_id: params[:id])
		@issue_publish_group = @issue_publish_select.group_by {|c|c.c_code[0].upcase} 
		if params[:c_type] == [""]
			@issue_publish = @issue_publish_select
		else
			@issue_publish = @issue_publish_group[@group_c_type.to_s].to_a 
		end

	end

	
	def pinvoice 
		@sdate = params[:sdate]
		@edate = params[:edate]
		@publish_summary = Issue::Publish.includes(:cpublishes).where(date: @sdate..@edate).order(:id)
		@publish_ids = []
		@publish_summary.each do |ps|
			@publish_ids<< ps.id
		end
		@customers_summary = Issue::Cpublish.where(publish_id: @publish_ids)
		@total_issue_quantity = @publish_summary.sum(:quantity)
		@total_free_copy =  @publish_summary.sum(:free_copy) 
		@total_quantity = @total_issue_quantity + @total_free_copy
		@customers_group = @customers_summary.group_by { |c|c.c_code }
		@customers_group_type = @customers_summary.group_by { |c|c.c_code[0].upcase }
	end

	def summary
		@sdate = params['sdate'].first
		@edate = params['edate'].first
		@r_sdate = @sdate.to_date.strftime("%Y-%m-01")
		@r_edate = @edate.to_date.strftime("%Y-%m-31")
		@publish_summary = Issue::Publish.includes(:cpublishes).where(date: @sdate..@edate)
		@publish_ids = []
		@publish_summary.each do |ps|
			@publish_ids<< ps.id
		end
		@customers_summary = Issue::Cpublish.where(publish_id: @publish_ids)
		@total_issue_quantity = @publish_summary.sum(:quantity)
		@total_free_copy =  @publish_summary.sum(:free_copy) 
		@total_quantity = @total_issue_quantity + @total_free_copy
		@total_return = Issue::Return.where( date: @r_sdate..@r_edate )
		@total_return_quantity = @total_return.sum(:qty)
		@total_return_month = @total_return.group_by { |r| r.date.beginning_of_month  }
		@total_return_type_group = @total_return.group_by { |r| r.c_code[0].upcase  }
		@customers_group = @customers_summary.group_by { |c|c.c_code }
		@customers_group_type = @customers_summary.group_by { |c|c.c_code[0].upcase }
	end

	def show
		@total_order_quantity = @issue_publish.cpublishes.sum(:quantity)
		@total_free_copy = @issue_publish.cpublishes.sum(:free_copy)
		@total_publish_quantity = @total_order_quantity +	@total_free_copy
		@issue_publish_group = @issue_publish.cpublishes.group_by {|c|c.c_code[0].upcase} 
	end

	# GET /issue/publishes/new
	def new
		@issue_publish = Issue::Publish.new
	end

	# GET /issue/publishes/1/edit
	def edit
	end

	def  copy
		@copy = Issue::Publish.find(params[:id])
		#create new object with attributes of existing record 
		#	@issue_publish = Issue::Publish.new(@copy.attributes) 
		@issue_publish = @copy.deep_clone include: :cpublishes 

		respond_to do |format|
			if @issue_publish.save
				format.html { redirect_to @issue_publish, notice: 'Publish was successfully created.' }
				format.json { render :show, status: :created, location: @issue_publish }
			else
				format.html { render :copy }
				format.json { render json: @issue_publish.errors, status: :unprocessable_entity }
			end

		end

	end

	# POST /issue/publishes
	# POST /issue/publishes.json
	def create
		@issue_publish = Issue::Publish.new(issue_publish_params)

		respond_to do |format|
			if @issue_publish.save
				format.html { redirect_to @issue_publish, notice: 'Publish was successfully created.' }
				format.json { render :show, status: :created, location: @issue_publish }
			else
				format.html { render :new }
				format.json { render json: @issue_publish.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /issue/publishes/1
	# PATCH/PUT /issue/publishes/1.json
	def update
		respond_to do |format|
			if @issue_publish.update(issue_publish_params)
				format.html { redirect_to @issue_publish, notice: 'Publish was successfully updated.' }
				format.json { render :show, status: :ok, location: @issue_publish }
			else
				format.html { render :edit }
				format.json { render json: @issue_publish.errors, status: :unprocessable_entity }
			end
		end
	end


	# DELETE /issue/publishes/1
	# DELETE /issue/publishes/1.json
	def destroy
		@issue_publish.destroy
		respond_to do |format|
			format.html { redirect_to issue_publishes_url, notice: 'Publish was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_issue_publish
		@issue_publish = Issue::Publish.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def issue_publish_params
		params.require(:issue_publish).permit(
			:id,:date,:operator,
			cpublishes_attributes: [:id,:publish_id,:c_code,:quantity,:free_copy,:_destroy]
		)
	end

	def action_layout

		case action_name

		when "plabel",  "pinvoice"
			"print"
		else
			"application"
		end

	end



end
