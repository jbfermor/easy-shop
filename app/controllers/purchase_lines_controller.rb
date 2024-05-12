class PurchaseLinesController < ApplicationController
  before_action :set_purchase_line, only: %i[ show edit update destroy ]

  # GET /purchase_lines or /purchase_lines.json
  def index
    @purchase_lines = PurchaseLine.all
  end

  # GET /purchase_lines/1 or /purchase_lines/1.json
  def show
  end

  # GET /purchase_lines/new
  def new
    @purchase_line = PurchaseLine.new
  end

  # GET /purchase_lines/1/edit
  def edit
  end

  # POST /purchase_lines or /purchase_lines.json
  def create
    @purchase_line = PurchaseLine.new(purchase_line_params)

    respond_to do |format|
      if @purchase_line.save
        format.html { redirect_to purchase_line_url(@purchase_line), notice: "Purchase line was successfully created." }
        format.json { render :show, status: :created, location: @purchase_line }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @purchase_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchase_lines/1 or /purchase_lines/1.json
  def update
    respond_to do |format|
      if @purchase_line.update(purchase_line_params)
        format.html { redirect_to purchase_line_url(@purchase_line), notice: "Purchase line was successfully updated." }
        format.json { render :show, status: :ok, location: @purchase_line }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @purchase_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_lines/1 or /purchase_lines/1.json
  def destroy
    @purchase_line.destroy

    respond_to do |format|
      format.html { redirect_to purchase_lines_url, notice: "Purchase line was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_line
      @purchase_line = PurchaseLine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purchase_line_params
      params.require(:purchase_line).permit(:purchase_id, :product_id, :quantity, :total)
    end
end
