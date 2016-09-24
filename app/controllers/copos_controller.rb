class CoposController < ApplicationController
  before_action :set_copo, only: [:show, :edit, :update, :destroy]

  # GET /copos
  # GET /copos.json
  def index
    @copos = Copo.all
  end

  # GET /copos/1
  # GET /copos/1.json
  def show
  end

  # GET /copos/new
  def new
    @copo = Copo.new
  end

  # GET /copos/1/edit
  def edit
  end

  # POST /copos
  # POST /copos.json
  def create
    @copo = Copo.new(copo_params)

    respond_to do |format|
      if @copo.save
        format.html { redirect_to @copo, notice: 'Copo was successfully created.' }
        format.json { render :show, status: :created, location: @copo }
      else
        format.html { render :new }
        format.json { render json: @copo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /copos/1
  # PATCH/PUT /copos/1.json
  def update
    respond_to do |format|
      if @copo.update(copo_params)
        format.html { redirect_to @copo, notice: 'Copo was successfully updated.' }
        format.json { render :show, status: :ok, location: @copo }
      else
        format.html { render :edit }
        format.json { render json: @copo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /copos/1
  # DELETE /copos/1.json
  def destroy
    @copo.destroy
    respond_to do |format|
      format.html { redirect_to copos_url, notice: 'Copo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copo
      @copo = Copo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def copo_params
      params.require(:copo).permit(:descripcion, :valor)
    end
end
