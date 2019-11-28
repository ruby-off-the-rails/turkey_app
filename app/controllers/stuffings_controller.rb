class StuffingsController < ApplicationController
  before_action :set_stuffing, only: [:show, :edit, :update, :destroy]

  # GET /stuffings
  # GET /stuffings.json
  def index
    @stuffings = Stuffing.all
  end

  # GET /stuffings/1
  # GET /stuffings/1.json
  def show
  end

  # GET /stuffings/new
  def new
    @stuffing = Stuffing.new
  end

  # GET /stuffings/1/edit
  def edit
  end

  # POST /stuffings
  # POST /stuffings.json
  def create
    @stuffing = Stuffing.new(stuffing_params)

    respond_to do |format|
      if @stuffing.save
        format.html { redirect_to @stuffing, notice: 'Stuffing was successfully created.' }
        format.json { render :show, status: :created, location: @stuffing }
      else
        format.html { render :new }
        format.json { render json: @stuffing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stuffings/1
  # PATCH/PUT /stuffings/1.json
  def update
    respond_to do |format|
      if @stuffing.update(stuffing_params)
        format.html { redirect_to @stuffing, notice: 'Stuffing was successfully updated.' }
        format.json { render :show, status: :ok, location: @stuffing }
      else
        format.html { render :edit }
        format.json { render json: @stuffing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stuffings/1
  # DELETE /stuffings/1.json
  def destroy
    @stuffing.destroy
    respond_to do |format|
      format.html { redirect_to stuffings_url, notice: 'Stuffing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stuffing
      @stuffing = Stuffing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stuffing_params
      params.require(:stuffing).permit(:color, :weight, :description, :flavor)
    end
end
