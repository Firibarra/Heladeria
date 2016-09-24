class ListaHeladosController < ApplicationController
  before_action :set_lista_helado, only: [:show, :edit, :update, :destroy]

  # GET /lista_helados
  # GET /lista_helados.json
  def index
    @lista_helados = ListaHelado.all
  end

  # GET /lista_helados/1
  # GET /lista_helados/1.json
  def show
  end

  # GET /lista_helados/new
  def new
    @lista_helado = ListaHelado.new
  end

  # GET /lista_helados/1/edit
  def edit
  end

  # POST /lista_helados
  # POST /lista_helados.json
  def create
    @lista_helado = ListaHelado.new(lista_helado_params)

    respond_to do |format|
      if @lista_helado.save
        format.html { redirect_to @lista_helado, notice: 'Lista helado was successfully created.' }
        format.json { render :show, status: :created, location: @lista_helado }
      else
        format.html { render :new }
        format.json { render json: @lista_helado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lista_helados/1
  # PATCH/PUT /lista_helados/1.json
  def update
    respond_to do |format|
      if @lista_helado.update(lista_helado_params)
        format.html { redirect_to @lista_helado, notice: 'Lista helado was successfully updated.' }
        format.json { render :show, status: :ok, location: @lista_helado }
      else
        format.html { render :edit }
        format.json { render json: @lista_helado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lista_helados/1
  # DELETE /lista_helados/1.json
  def destroy
    @lista_helado.destroy
    respond_to do |format|
      format.html { redirect_to lista_helados_url, notice: 'Lista helado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lista_helado
      @lista_helado = ListaHelado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lista_helado_params
      params.require(:lista_helado).permit(:pedido_id, :helado_id)
    end
end
