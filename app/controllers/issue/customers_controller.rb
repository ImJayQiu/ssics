class Issue::CustomersController < ApplicationController
	before_action :set_issue_customer, only: [:show, :edit, :update, :destroy]

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

		@c_type = params[:c_type]
		@province = params[:province]

		if @c_type == [""]
			if @province == [""] 
				@issue_customers = Issue::Customer.all
			else
				@issue_customers = Issue::Customer.where("province=?", @province)
			end
		else
			if @province==[""]
				@issue_customers = Issue::Customer.where("c_type=?", @c_type)
			else
				@issue_customers = Issue::Customer.where("c_type=? && province=?", @c_type, @province)
			end
		end
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
			:code, :c_name, :c_address, :area, :province, :city, 
			:c_type, :p_name, :email, :phone, :fax, :map)
	end
end
