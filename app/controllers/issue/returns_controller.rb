class Issue::ReturnsController < ApplicationController
	before_action :set_issue_return, only: [:show, :edit, :update, :destroy]

	# GET /issue/returns
	# GET /issue/returns.json
	def index
		@issue_returns = Issue::Return.paginate(:page => params[:page], :per_page => 20 ).order('created_at DESC')
	end

	# GET /issue/returns/1
	# GET /issue/returns/1.json
	def show
		@customer = Issue::Customer.find(@issue_return.c_code[-4,4].to_i)
	end

	# GET /issue/returns/new
	def new
		@issue_return = Issue::Return.new
	end

	# GET /issue/returns/1/edit
	def edit
	end

	# POST /issue/returns
	# POST /issue/returns.json
	def create
		@issue_return = Issue::Return.new(issue_return_params)

		respond_to do |format|
			if @issue_return.save
				format.html { redirect_to @issue_return, notice: 'Return was successfully created.' }
				format.json { render :show, status: :created, location: @issue_return }
			else
				format.html { render :new }
				format.json { render json: @issue_return.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /issue/returns/1
	# PATCH/PUT /issue/returns/1.json
	def update
		respond_to do |format|
			if @issue_return.update(issue_return_params)
				format.html { redirect_to @issue_return, notice: 'Return was successfully updated.' }
				format.json { render :show, status: :ok, location: @issue_return }
			else
				format.html { render :edit }
				format.json { render json: @issue_return.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /issue/returns/1
	# DELETE /issue/returns/1.json
	def destroy
		@issue_return.destroy
		respond_to do |format|
			format.html { redirect_to issue_returns_url, notice: 'Return was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_issue_return
		@issue_return = Issue::Return.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def issue_return_params
		params.require(:issue_return).permit(:date, :c_code, :qty, :remark, :operator)
	end
end
