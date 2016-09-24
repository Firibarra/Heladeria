class GalletaController < ApplicationController
  before_action :set_galletum, only: [:show, :edit, :update, :destroy]

  # GET /galleta
  # GET /galleta.json
  def index
    @galleta = Galletum.all
  end

  # GET /galleta/1
  # GET /galleta/1.json
  def show
  end

  # GET /galleta/new
  def new
    @galletum = Galletum.new
  end

  # GET /galleta/1/edit
  def edit
  end

  # POST /galleta
  # POST /galleta.json
  def create
    @galletum = Galletum.new(galletum_params)

    respond_to do |format|
      if @galletum.save
        format.html { redirect_to @galletum, notice: 'Galletum was successfully created.' }
        format.json { render :show, status: :created, location: @galletum }
      else
        format.html { render :new }
        format.json { render json: @galletum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galleta/1
  # PATCH/PUT /galleta/1.json
  def update
    respond_to do |format|
      if @galletum.update(galletum_params)
        format.html { redirect_to @galletum, notice: 'Galletum was successfully updated.' }
        format.json { render :show, status: :ok, location: @galletum }
      else
        format.html { render :edit }
        format.json { render json: @galletum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galleta/1
  # DELETE /galleta/1.json
  def destroy
    @galletum.destroy
    respond_to do |format|
      format.html { redirect_to galleta_url, notice: 'Galletum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galletum
      @galletum = Galletum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galletum_params
      params.require(:galletum).permit(:descripcion, :valor)
    end
end
