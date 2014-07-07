class Issue::CitiesController < ApplicationController
  before_action :set_issue_city, only: [:show, :edit, :update, :destroy]

  # GET /issue/cities
  # GET /issue/cities.json
  def index
    @issue_cities = Issue::City.all
  end

  # GET /issue/cities/1
  # GET /issue/cities/1.json
  def show
  end

  # GET /issue/cities/new
  def new
    @issue_city = Issue::City.new
  end

  # GET /issue/cities/1/edit
  def edit
  end

  # POST /issue/cities
  # POST /issue/cities.json
  def create
    @issue_city = Issue::City.new(issue_city_params)

    respond_to do |format|
      if @issue_city.save
        format.html { redirect_to @issue_city, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @issue_city }
      else
        format.html { render :new }
        format.json { render json: @issue_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issue/cities/1
  # PATCH/PUT /issue/cities/1.json
  def update
    respond_to do |format|
      if @issue_city.update(issue_city_params)
        format.html { redirect_to @issue_city, notice: 'City was successfully updated.' }
        format.json { render :show, status: :ok, location: @issue_city }
      else
        format.html { render :edit }
        format.json { render json: @issue_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issue/cities/1
  # DELETE /issue/cities/1.json
  def destroy
    @issue_city.destroy
    respond_to do |format|
      format.html { redirect_to issue_cities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue_city
      @issue_city = Issue::City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_city_params
      params.require(:issue_city).permit(:code, :city_name, :area, :remark)
    end
end
