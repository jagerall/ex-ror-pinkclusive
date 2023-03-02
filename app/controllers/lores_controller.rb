class LoresController < ApplicationController
  before_action :set_lore, only: %i[ show edit update destroy ]

  # GET /lores or /lores.json
  def index
    @lores = Lore.all
  end

  # GET /lores/1 or /lores/1.json
  def show
  end

  # GET /lores/new
  def new
    @lore = Lore.new
  end

  # GET /lores/1/edit
  def edit
  end

  # POST /lores or /lores.json
  def create
    @lore = Lore.new(lore_params)

    respond_to do |format|
      if @lore.save
        format.html { redirect_to lore_url(@lore), notice: "Lore was successfully created." }
        format.json { render :show, status: :created, location: @lore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lores/1 or /lores/1.json
  def update
    respond_to do |format|
      if @lore.update(lore_params)
        format.html { redirect_to lore_url(@lore), notice: "Lore was successfully updated." }
        format.json { render :show, status: :ok, location: @lore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lores/1 or /lores/1.json
  def destroy
    @lore.destroy

    respond_to do |format|
      format.html { redirect_to lores_url, notice: "Lore was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lore
      @lore = Lore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lore_params
      params.require(:lore).permit(:title, :content, :image)
    end
end
