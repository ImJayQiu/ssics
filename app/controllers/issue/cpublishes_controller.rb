class Issue::CpublishesController < ApplicationController
  before_action :set_issue_cpublish, only: [:show, :edit, :update, :destroy]

  # GET /issue/cpublishes
  # GET /issue/cpublishes.json
  def index
    @issue_cpublishes = Issue::Cpublish.all
  end

  # GET /issue/cpublishes/1
  # GET /issue/cpublishes/1.json
  def show
  end

  # GET /issue/cpublishes/new
  def new
    @issue_cpublish = Issue::Cpublish.new
  end

  # GET /issue/cpublishes/1/edit
  def edit
  end

  # POST /issue/cpublishes
  # POST /issue/cpublishes.json
  def create
    @issue_cpublish = Issue::Cpublish.new(issue_cpublish_params)

    respond_to do |format|
      if @issue_cpublish.save
        format.html { redirect_to @issue_cpublish, notice: 'Cpublish was successfully created.' }
        format.json { render :show, status: :created, location: @issue_cpublish }
      else
        format.html { render :new }
        format.json { render json: @issue_cpublish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issue/cpublishes/1
  # PATCH/PUT /issue/cpublishes/1.json
  def update
    respond_to do |format|
      if @issue_cpublish.update(issue_cpublish_params)
        format.html { redirect_to @issue_cpublish, notice: 'Cpublish was successfully updated.' }
        format.json { render :show, status: :ok, location: @issue_cpublish }
      else
        format.html { render :edit }
        format.json { render json: @issue_cpublish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issue/cpublishes/1
  # DELETE /issue/cpublishes/1.json
  def destroy
    @issue_cpublish.destroy
    respond_to do |format|
      format.html { redirect_to issue_cpublishes_url, notice: 'Cpublish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue_cpublish
      @issue_cpublish = Issue::Cpublish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_cpublish_params
      params.require(:issue_cpublish).permit(:issue_publish_id)
    end
end
