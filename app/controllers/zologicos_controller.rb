class ZologicosController < ApplicationController
  before_action :set_zologico, only: [:show, :edit, :update, :destroy]

  # GET /zologicos
  # GET /zologicos.json
  def index
    @zologicos = Zologico.all
  end

  # GET /zologicos/1
  # GET /zologicos/1.json
  def show
  end

  # GET /zologicos/new
  def new
    @zologico = Zologico.new
  end

  # GET /zologicos/1/edit
  def edit
  end

  # POST /zologicos
  # POST /zologicos.json
  def create
    @zologico = Zologico.new(zologico_params)

    respond_to do |format|
      if @zologico.save
        format.html { redirect_to @zologico, notice: 'Zologico was successfully created.' }
        format.json { render :show, status: :created, location: @zologico }
      else
        format.html { render :new }
        format.json { render json: @zologico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zologicos/1
  # PATCH/PUT /zologicos/1.json
  def update
    respond_to do |format|
      if @zologico.update(zologico_params)
        format.html { redirect_to @zologico, notice: 'Zologico was successfully updated.' }
        format.json { render :show, status: :ok, location: @zologico }
      else
        format.html { render :edit }
        format.json { render json: @zologico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zologicos/1
  # DELETE /zologicos/1.json
  def destroy
    @zologico.destroy
    respond_to do |format|
      format.html { redirect_to zologicos_url, notice: 'Zologico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zologico
      @zologico = Zologico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zologico_params
      params.require(:zologico).permit(:name)
    end
end
