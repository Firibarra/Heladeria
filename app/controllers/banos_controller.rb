class BanosController < ApplicationController
  before_action :set_bano, only: [:show, :edit, :update, :destroy]

  # GET /banos
  # GET /banos.json
  def index
    @banos = Bano.all
  end

  # GET /banos/1
  # GET /banos/1.json
  def show
  end

  # GET /banos/new
  def new
    @bano = Bano.new
  end

  # GET /banos/1/edit
  def edit
  end

  # POST /banos
  # POST /banos.json
  def create
    @bano = Bano.new(bano_params)

    respond_to do |format|
      if @bano.save
        format.html { redirect_to @bano, notice: 'Bano was successfully created.' }
        format.json { render :show, status: :created, location: @bano }
      else
        format.html { render :new }
        format.json { render json: @bano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banos/1
  # PATCH/PUT /banos/1.json
  def update
    respond_to do |format|
      if @bano.update(bano_params)
        format.html { redirect_to @bano, notice: 'Bano was successfully updated.' }
        format.json { render :show, status: :ok, location: @bano }
      else
        format.html { render :edit }
        format.json { render json: @bano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banos/1
  # DELETE /banos/1.json
  def destroy
    @bano.destroy
    respond_to do |format|
      format.html { redirect_to banos_url, notice: 'Bano was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bano
      @bano = Bano.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bano_params
      params.require(:bano).permit(:descripcion, :valor)
    end
end
