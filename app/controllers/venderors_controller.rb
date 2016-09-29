class VenderorsController < ApplicationController
  before_action :set_venderor, only: [:login, :show, :edit, :update, :destroy]

  # GET /venderors
  # GET /venderors.json
  def login
  end

  def index
    @venderors = Venderor.all
  end

  # GET /venderors/1
  # GET /venderors/1.json
  def show
  end

  # GET /venderors/new
  def new
    @venderor = Venderor.new
  end

  # GET /venderors/1/edit
  def edit
  end

  # POST /venderors
  # POST /venderors.json
  def create
    @venderor = Venderor.new(venderor_params)

    respond_to do |format|
      if @venderor.save
        format.html { redirect_to @venderor, notice: 'Vendedor Creado!.' }
        format.json { render :show, status: :created, location: @venderor }
      else
        format.html { render :new }
        format.json { render json: @venderor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venderors/1
  # PATCH/PUT /venderors/1.json
  def update
    respond_to do |format|
      if @venderor.update(venderor_params)
        format.html { redirect_to @venderor, notice: 'Datos del Vendedor actualizados.' }
        format.json { render :show, status: :ok, location: @venderor }
      else
        format.html { render :edit }
        format.json { render json: @venderor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venderors/1
  # DELETE /venderors/1.json
  def destroy
    @venderor.destroy
    respond_to do |format|
      format.html { redirect_to venderors_url, notice: 'Vendedor Eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venderor
      @venderor = Venderor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venderor_params
      params.require(:venderor).permit(:nombre, :apellido_p, :apellido_m, :rut, :verifi, :clave)
    end
end
