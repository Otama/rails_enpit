class UranaisController < ApplicationController
  before_action :set_uranai, only: [:show, :edit, :update, :destroy]

  # GET /uranais
  # GET /uranais.json
  def index
    @uranais = Uranai.all
  end

  # GET /uranais/1
  # GET /uranais/1.json
  def show
  end

  # GET /uranais/new
  def new
    @uranai = Uranai.new
  end

  # GET /uranais/1/edit
  def edit
  end

  # POST /uranais
  # POST /uranais.json
  def create
    @uranai = Uranai.new(uranai_params)

    respond_to do |format|
      if @uranai.save
        format.html { redirect_to @uranai, notice: 'Uranai was successfully created.' }
        format.json { render :show, status: :created, location: @uranai }
      else
        format.html { render :new }
        format.json { render json: @uranai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uranais/1
  # PATCH/PUT /uranais/1.json
  def update
    respond_to do |format|
      if @uranai.update(uranai_params)
        format.html { redirect_to @uranai, notice: 'Uranai was successfully updated.' }
        format.json { render :show, status: :ok, location: @uranai }
      else
        format.html { render :edit }
        format.json { render json: @uranai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uranais/1
  # DELETE /uranais/1.json
  def destroy
    @uranai.destroy
    respond_to do |format|
      format.html { redirect_to uranais_url, notice: 'Uranai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uranai
      @uranai = Uranai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uranai_params
      params.require(:uranai).permit(:luck, :detail)
    end
end
