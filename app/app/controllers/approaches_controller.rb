class ApproachesController < ApplicationController
  before_action :set_approach, only: [:show, :edit, :update, :destroy]

  # GET /approaches
  # GET /approaches.json
  def index
    @approaches = Approach.all
  end

  # GET /approaches/1
  # GET /approaches/1.json
  def show
  end

  # GET /approaches/new
  def new
    @approach = Approach.new
  end

  # GET /approaches/1/edit
  def edit
  end

  # POST /approaches
  # POST /approaches.json
  def create
    @approach = Approach.new(approach_params)

    respond_to do |format|
      if @approach.save
        format.html { redirect_to @approach, notice: 'Approach was successfully created.' }
        format.json { render :show, status: :created, location: @approach }
      else
        format.html { render :new }
        format.json { render json: @approach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /approaches/1
  # PATCH/PUT /approaches/1.json
  def update
    respond_to do |format|
      if @approach.update(approach_params)
        format.html { redirect_to @approach, notice: 'Approach was successfully updated.' }
        format.json { render :show, status: :ok, location: @approach }
      else
        format.html { render :edit }
        format.json { render json: @approach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /approaches/1
  # DELETE /approaches/1.json
  def destroy
    @approach.destroy
    respond_to do |format|
      format.html { redirect_to approaches_url, notice: 'Approach was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_approach
      @approach = Approach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def approach_params
      params.require(:approach).permit(:text)
    end
end
