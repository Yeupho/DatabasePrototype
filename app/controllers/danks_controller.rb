class DanksController < ApplicationController
  before_action :set_dank, only: [:show, :edit, :update, :destroy]

  # GET /danks
  # GET /danks.json
  def index
    @danks = Dank.all
  end

  # GET /danks/1
  # GET /danks/1.json
  def show
  end

  # GET /danks/new
  def new
    @dank = Dank.new
  end

  # GET /danks/1/edit
  def edit
  end

  # POST /danks
  # POST /danks.json
  def create
    @dank = Dank.new(dank_params)

    respond_to do |format|
      if @dank.save
        format.html { redirect_to @dank, notice: 'Dank was successfully created.' }
        format.json { render :show, status: :created, location: @dank }
      else
        format.html { render :new }
        format.json { render json: @dank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /danks/1
  # PATCH/PUT /danks/1.json
  def update
    respond_to do |format|
      if @dank.update(dank_params)
        format.html { redirect_to @dank, notice: 'Dank was successfully updated.' }
        format.json { render :show, status: :ok, location: @dank }
      else
        format.html { render :edit }
        format.json { render json: @dank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /danks/1
  # DELETE /danks/1.json
  def destroy
    @dank.destroy
    respond_to do |format|
      format.html { redirect_to danks_url, notice: 'Dank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dank
      @dank = Dank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dank_params
      params.require(:dank).permit(:name)
    end
end
