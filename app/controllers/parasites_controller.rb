class ParasitesController < ApplicationController
  before_action :set_parasite, only: %i[ show edit update destroy ]

  # GET /parasites or /parasites.json
  def index
    @parasites = Parasite.all
  end

  # GET /parasites/1 or /parasites/1.json
  def show
  end

  # GET /parasites/new
  def new
    @parasite = Parasite.new
  end

  # GET /parasites/1/edit
  def edit
  end

  # POST /parasites or /parasites.json
  def create
    @parasite = Parasite.new(parasite_params)

    respond_to do |format|
      if @parasite.save
        format.html { redirect_to parasite_url(@parasite), notice: "Parasite was successfully created." }
        format.json { render :show, status: :created, location: @parasite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parasite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parasites/1 or /parasites/1.json
  def update
    respond_to do |format|
      if @parasite.update(parasite_params)
        format.html { redirect_to parasite_url(@parasite), notice: "Parasite was successfully updated." }
        format.json { render :show, status: :ok, location: @parasite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parasite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parasites/1 or /parasites/1.json
  def destroy
    @parasite.destroy

    respond_to do |format|
      format.html { redirect_to parasites_url, notice: "Parasite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parasite
      @parasite = Parasite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parasite_params
      params.require(:parasite).permit(:name, :description, :capacity, :pv, :atk, :def, :image)
    end
end
