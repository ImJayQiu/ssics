class Issue::TypesController < ApplicationController
  before_action :set_issue_type, only: [:show, :edit, :update, :destroy]

  # GET /issue/types
  # GET /issue/types.json
  def index
    @issue_types = Issue::Type.all
  end

  # GET /issue/types/1
  # GET /issue/types/1.json
  def show
  end

  # GET /issue/types/new
  def new
    @issue_type = Issue::Type.new
  end

  # GET /issue/types/1/edit
  def edit
  end

  # POST /issue/types
  # POST /issue/types.json
  def create
    @issue_type = Issue::Type.new(issue_type_params)

    respond_to do |format|
      if @issue_type.save
        format.html { redirect_to @issue_type, notice: 'Type was successfully created.' }
        format.json { render :show, status: :created, location: @issue_type }
      else
        format.html { render :new }
        format.json { render json: @issue_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issue/types/1
  # PATCH/PUT /issue/types/1.json
  def update
    respond_to do |format|
      if @issue_type.update(issue_type_params)
        format.html { redirect_to @issue_type, notice: 'Type was successfully updated.' }
        format.json { render :show, status: :ok, location: @issue_type }
      else
        format.html { render :edit }
        format.json { render json: @issue_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issue/types/1
  # DELETE /issue/types/1.json
  def destroy
    @issue_type.destroy
    respond_to do |format|
      format.html { redirect_to issue_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue_type
      @issue_type = Issue::Type.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_type_params
      params.require(:issue_type).permit(:code, :c_type, :remark)
    end
end
