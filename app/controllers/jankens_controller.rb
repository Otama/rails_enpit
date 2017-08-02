class JankensController < ApplicationController
  before_action :set_janken, only: [:show, :edit, :update, :destroy]

  # GET /jankens
  # GET /jankens.json
  def index
    @janken = Janken.new
    @jankens = Janken.all
  end

  # GET /jankens/1
  # GET /jankens/1.json
  def show
  end

  # GET /jankens/new
  def new
    @janken = Janken.new
  end

  # GET /jankens/1/edit
  def edit
  end

  # POST /jankens
  # POST /jankens.json
  def create
    @janken = Janken.new(janken_params)
    @janken.hand = params[:commit]
    @janken.name = '名無しさん' if @janken.name == ""
    @janken.room = 1 unless @janken.room

    respond_to do |format|
      if @janken.save
        format.html { render :show, notice: 'Janken was successfully created.' }
        format.json { render :index, status: :created, location: @janken }
      else
        format.html { render :new }
        format.json { render json: @janken.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jankens/1
  # PATCH/PUT /jankens/1.json
  def update
    respond_to do |format|
      if @janken.update(janken_params)
        format.html { redirect_to @janken, notice: 'Janken was successfully updated.' }
        format.json { render :show, status: :ok, location: @janken }
      else
        format.html { render :edit }
        format.json { render json: @janken.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jankens/1
  # DELETE /jankens/1.json
  def destroy
    @janken.destroy
    respond_to do |format|
      format.html { redirect_to jankens_url, notice: 'Janken was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_janken
      @janken = Janken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def janken_params
      params.require(:janken).permit(:name, :hand, :room)
    end
end
