class Issue::CustomersController < ApplicationController
	before_action :set_issue_customer, only: [:show, :edit, :update, :destroy]
	layout :action_layout 

	# GET /issue/customers
	# GET /issue/customers.json
	def index
		@issue_customers = Issue::Customer.paginate(:page => params[:page], :per_page => 20 )
	end

	# GET /issue/customers/1
	# GET /issue/customers/1.json
	def show
	end

	# GET /issue/customers/new
	def new
		@issue_customer = Issue::Customer.new
	end

	# GET /issue/customers/1/edit
	def edit
	end

	def plabel
		@issue_customer = Issue::Customer.find(params[:id])
	end

	# POST /issue/customers
	# POST /issue/customers.json
	def create
		@issue_customer = Issue::Customer.new(issue_customer_params)

		respond_to do |format|
			if @issue_customer.save
				format.html { redirect_to @issue_customer, notice: 'Customer was successfully created.' }
				format.json { render :show, status: :created, location: @issue_customer }
			else
				format.html { render :new }
				format.json { render json: @issue_customer.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /issue/customers/1
	# PATCH/PUT /issue/customers/1.json
	def update
		respond_to do |format|
			if @issue_customer.update(issue_customer_params)
				format.html { redirect_to @issue_customer, notice: 'Customer was successfully updated.' }
				format.json { render :show, status: :ok, location: @issue_customer }
			else
				format.html { render :edit }
				format.json { render json: @issue_customer.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /issue/customers/1
	# DELETE /issue/customers/1.json
	def destroy
		@issue_customer.destroy
		respond_to do |format|
			format.html { redirect_to issue_customers_url }
			format.json { head :no_content }
		end
	end

	def summary


		if params[:c_type] == [""]
			@c_type = []
			Issue::Type.all.each do |t|
				@c_type << t.code
			end
		else
			@c_type = params[:c_type]
		end

		if params[:c_area] == [""]
			@c_area = []
			Issue::Area.all.each do |a|
				@c_area << a.code
			end
		else
			@c_area = params[:c_area]
		end

		if params[:c_industry] == [""]
			@c_industry = []
			General::Industry.all.each do |i|
				@c_industry << i.code
			end
		else
			@c_industry = params[:c_industry]
		end

		@issue_customers = Issue::Customer.where(c_type: @c_type,  area: @c_area,  industry: @c_industry)
		@total_count = @issue_customers.count 
	end

	#	def update_cities
	# useless updates citiess based on province selected
	#		province = Issue::province.includes(:cities).find(params[:province_id])
	#		@cities = province.cities.map{|s| [s.city, s.id]}.insert(0, "Select a city")
	#	end
	# ///////// useless ajax dynamic select /////////////////////////////////////////////// 


	private
	# Use callbacks to share common setup or constraints between actions.
	def set_issue_customer
		@issue_customer = Issue::Customer.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def issue_customer_params
		params.require(:issue_customer).permit(
			:code, :c_name, :c_name2, :c_address, :area, :province, :city, 
			:c_type, :p_name, :email, :phone, :fax, :map, :remark, :industry, :price, :price2)
	end

	def action_layout

		case action_name

		when "plabel"
			"print"
		else
			"application"
		end

	end

end
