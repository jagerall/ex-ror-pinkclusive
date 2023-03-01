class PractitionersController < ApplicationController
  before_action :set_practitioner, only: %i[ show edit update destroy ]

  # GET /practitioners or /practitioners.json
  def index
    @practitioners = Practitioner.all
  end

  # GET /practitioners/1 or /practitioners/1.json
  def show
  end

  # GET /practitioners/new
  def new
    @practitioner = Practitioner.new
  end

  # GET /practitioners/1/edit
  def edit
  end

  # POST /practitioners or /practitioners.json
  def create
    @practitioner = Practitioner.new(practitioner_params)

    respond_to do |format|
      if @practitioner.save
        format.html { redirect_to practitioner_url(@practitioner), notice: "Practitioner was successfully created." }
        format.json { render :show, status: :created, location: @practitioner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @practitioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practitioners/1 or /practitioners/1.json
  def update
    respond_to do |format|
      if @practitioner.update(practitioner_params)
        format.html { redirect_to practitioner_url(@practitioner), notice: "Practitioner was successfully updated." }
        format.json { render :show, status: :ok, location: @practitioner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @practitioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practitioners/1 or /practitioners/1.json
  def destroy
    @practitioner.destroy

    respond_to do |format|
      format.html { redirect_to practitioners_url, notice: "Practitioner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practitioner
      @practitioner = Practitioner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def practitioner_params
      params.require(:practitioner).permit(:name, :surname, :job, :phone, :address, :city)
    end
end
