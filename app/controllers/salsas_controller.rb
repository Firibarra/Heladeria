class SalsasController < ApplicationController
  before_action :set_salsa, only: [:show, :edit, :update, :destroy]

  # GET /salsas
  # GET /salsas.json
  def index
    @salsas = Salsa.all
  end

  # GET /salsas/1
  # GET /salsas/1.json
  def show
  end

  # GET /salsas/new
  def new
    @salsa = Salsa.new
  end

  # GET /salsas/1/edit
  def edit
  end

  # POST /salsas
  # POST /salsas.json
  def create
    @salsa = Salsa.new(salsa_params)

    respond_to do |format|
      if @salsa.save
        format.html { redirect_to @salsa, notice: 'Salsa was successfully created.' }
        format.json { render :show, status: :created, location: @salsa }
      else
        format.html { render :new }
        format.json { render json: @salsa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salsas/1
  # PATCH/PUT /salsas/1.json
  def update
    respond_to do |format|
      if @salsa.update(salsa_params)
        format.html { redirect_to @salsa, notice: 'Salsa was successfully updated.' }
        format.json { render :show, status: :ok, location: @salsa }
      else
        format.html { render :edit }
        format.json { render json: @salsa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salsas/1
  # DELETE /salsas/1.json
  def destroy
    @salsa.destroy
    respond_to do |format|
      format.html { redirect_to salsas_url, notice: 'Salsa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salsa
      @salsa = Salsa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def salsa_params
      params.require(:salsa).permit(:descripcion, :valor)
    end
end
