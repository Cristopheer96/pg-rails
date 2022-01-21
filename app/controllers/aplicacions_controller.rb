class AplicacionsController < ApplicationController
  before_action :set_aplicacion, only: %i[ show edit update destroy ]

  # GET /aplicacions or /aplicacions.json
  def index
    @aplicacions = Aplicacion.all
  end

  # GET /aplicacions/1 or /aplicacions/1.json
  def show
  end

  # GET /aplicacions/new
  def new
    @aplicacion = Aplicacion.new
  end

  # GET /aplicacions/1/edit
  def edit
  end

  # POST /aplicacions or /aplicacions.json
  def create
    @aplicacion = Aplicacion.new(aplicacion_params)

    respond_to do |format|
      if @aplicacion.save
        format.html { redirect_to aplicacion_url(@aplicacion), notice: "Aplicacion was successfully created." }
        format.json { render :show, status: :created, location: @aplicacion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aplicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aplicacions/1 or /aplicacions/1.json
  def update
    respond_to do |format|
      if @aplicacion.update(aplicacion_params)
        format.html { redirect_to aplicacion_url(@aplicacion), notice: "Aplicacion was successfully updated." }
        format.json { render :show, status: :ok, location: @aplicacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aplicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aplicacions/1 or /aplicacions/1.json
  def destroy
    @aplicacion.destroy

    respond_to do |format|
      format.html { redirect_to aplicacions_url, notice: "Aplicacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aplicacion
      @aplicacion = Aplicacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aplicacion_params
      params.require(:aplicacion).permit(:nombre, :descripcion)
    end
end
