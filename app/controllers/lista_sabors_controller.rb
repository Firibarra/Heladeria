class ListaSaborsController < ApplicationController
  before_action :set_lista_sabor, only: [:show, :edit, :update, :destroy]

  # GET /lista_sabors
  # GET /lista_sabors.json
  def index
    @lista_sabors = ListaSabor.all
  end

  # GET /lista_sabors/1
  # GET /lista_sabors/1.json
  def show
  end

  # GET /lista_sabors/new
  def new
    @lista_sabor = ListaSabor.new
  end

  # GET /lista_sabors/1/edit
  def edit
  end

  # POST /lista_sabors
  # POST /lista_sabors.json
  def create
    @lista_sabor = ListaSabor.new(lista_sabor_params)

    respond_to do |format|
      if @lista_sabor.save
        format.html { redirect_to @lista_sabor, notice: 'Lista sabor was successfully created.' }
        format.json { render :show, status: :created, location: @lista_sabor }
      else
        format.html { render :new }
        format.json { render json: @lista_sabor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lista_sabors/1
  # PATCH/PUT /lista_sabors/1.json
  def update
    respond_to do |format|
      if @lista_sabor.update(lista_sabor_params)
        format.html { redirect_to @lista_sabor, notice: 'Lista sabor was successfully updated.' }
        format.json { render :show, status: :ok, location: @lista_sabor }
      else
        format.html { render :edit }
        format.json { render json: @lista_sabor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lista_sabors/1
  # DELETE /lista_sabors/1.json
  def destroy
    @lista_sabor.destroy
    respond_to do |format|
      format.html { redirect_to lista_sabors_url, notice: 'Lista sabor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lista_sabor
      @lista_sabor = ListaSabor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lista_sabor_params
      params.require(:lista_sabor).permit(:helado_id, :sabor)
    end
end
