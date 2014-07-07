class Newspaper::LayoutsController < ApplicationController
  before_action :set_newspaper_layout, only: [:show, :edit, :update, :destroy]

  # GET /newspaper/layouts
  # GET /newspaper/layouts.json
  def index
    @newspaper_layouts = Newspaper::Layout.all
  end

  # GET /newspaper/layouts/1
  # GET /newspaper/layouts/1.json
  def show
  end

  # GET /newspaper/layouts/new
  def new
    @newspaper_layout = Newspaper::Layout.new
  end

  # GET /newspaper/layouts/1/edit
  def edit
  end

  # POST /newspaper/layouts
  # POST /newspaper/layouts.json
  def create
    @newspaper_layout = Newspaper::Layout.new(newspaper_layout_params)

    respond_to do |format|
      if @newspaper_layout.save
        format.html { redirect_to @newspaper_layout, notice: 'Layout was successfully created.' }
        format.json { render :show, status: :created, location: @newspaper_layout }
      else
        format.html { render :new }
        format.json { render json: @newspaper_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newspaper/layouts/1
  # PATCH/PUT /newspaper/layouts/1.json
  def update
    respond_to do |format|
      if @newspaper_layout.update(newspaper_layout_params)
        format.html { redirect_to @newspaper_layout, notice: 'Layout was successfully updated.' }
        format.json { render :show, status: :ok, location: @newspaper_layout }
      else
        format.html { render :edit }
        format.json { render json: @newspaper_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newspaper/layouts/1
  # DELETE /newspaper/layouts/1.json
  def destroy
    @newspaper_layout.destroy
    respond_to do |format|
      format.html { redirect_to newspaper_layouts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newspaper_layout
      @newspaper_layout = Newspaper::Layout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newspaper_layout_params
      params.require(:newspaper_layout).permit(:code)
    end
end
