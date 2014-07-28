class Issue::PublishesController < ApplicationController
  before_action :set_issue_publish, only: [:show, :edit, :update, :destroy]

  # GET /issue/publishes
  # GET /issue/publishes.json
  def index
    @issue_publishes = Issue::Publish.all
  end

  # GET /issue/publishes/1
  # GET /issue/publishes/1.json
  def show
  end

  # GET /issue/publishes/new
  def new
    @issue_publish = Issue::Publish.new
  end

  # GET /issue/publishes/1/edit
  def edit
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
		  :date,:operator,
		  cpublishes_attributes: [:id,:issue_publish_id,:c_code,:quantity,:_destroy]
	  )
    end
end
