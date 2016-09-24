class ChipsController < ApplicationController
  before_action :set_chip, only: [:show, :edit, :update, :destroy]

  # GET /chips
  # GET /chips.json
  def index
    @chips = Chip.all
  end

  # GET /chips/1
  # GET /chips/1.json
  def show
  end

  # GET /chips/new
  def new
    @chip = Chip.new
  end

  # GET /chips/1/edit
  def edit
  end

  # POST /chips
  # POST /chips.json
  def create
    @chip = Chip.new(chip_params)

    respond_to do |format|
      if @chip.save
        format.html { redirect_to @chip, notice: 'Chip was successfully created.' }
        format.json { render :show, status: :created, location: @chip }
      else
        format.html { render :new }
        format.json { render json: @chip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chips/1
  # PATCH/PUT /chips/1.json
  def update
    respond_to do |format|
      if @chip.update(chip_params)
        format.html { redirect_to @chip, notice: 'Chip was successfully updated.' }
        format.json { render :show, status: :ok, location: @chip }
      else
        format.html { render :edit }
        format.json { render json: @chip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chips/1
  # DELETE /chips/1.json
  def destroy
    @chip.destroy
    respond_to do |format|
      format.html { redirect_to chips_url, notice: 'Chip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chip
      @chip = Chip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chip_params
      params.require(:chip).permit(:descripcion, :valor)
    end
end
