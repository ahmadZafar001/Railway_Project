class TrainCompartmentsController < ApplicationController
  before_action :set_train_compartment, only: [:show, :edit, :update, :destroy]

  # GET /train_compartments
  # GET /train_compartments.json
  def index
    @train_compartments = TrainCompartment.all
  end

  # GET /train_compartments/1
  # GET /train_compartments/1.json
  def show
  end

  # GET /train_compartments/new
  def new
    @train_compartment = TrainCompartment.new
  end

  # GET /train_compartments/1/edit
  def edit
  end

  # POST /train_compartments
  # POST /train_compartments.json
  def create
    @train_compartment = TrainCompartment.new(train_compartment_params)

    respond_to do |format|
      if @train_compartment.save
        format.html { redirect_to @train_compartment, notice: 'Train compartment was successfully created.' }
        format.json { render :show, status: :created, location: @train_compartment }
      else
        format.html { render :new }
        format.json { render json: @train_compartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /train_compartments/1
  # PATCH/PUT /train_compartments/1.json
  def update
    respond_to do |format|
      if @train_compartment.update(train_compartment_params)
        format.html { redirect_to @train_compartment, notice: 'Train compartment was successfully updated.' }
        format.json { render :show, status: :ok, location: @train_compartment }
      else
        format.html { render :edit }
        format.json { render json: @train_compartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /train_compartments/1
  # DELETE /train_compartments/1.json
  def destroy
    @train_compartment.destroy
    respond_to do |format|
      format.html { redirect_to train_compartments_url, notice: 'Train compartment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_compartment
      @train_compartment = TrainCompartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def train_compartment_params
      params.require(:train_compartment).permit(:train_id, :compartment_id, :available_seats)
    end
end
