class PurchasesController < ApplicationController
  before_action :set_purchase, only: %i[ show edit update destroy ]
  before_action :check_pending_purchase, except: %i[show destroy]
  # GET /purchases or /purchases.json
  def index
    @purchases = Purchase.all
  end

  # GET /purchases/1 or /purchases/1.json
  def show
  end

  # GET /purchases/new
  def new
    @purchase = Purchase.new
    @purchase.purchase_date = Date.today
    @suppliers = current_user.suppliers
  end

  # GET /purchases/1/edit
  def edit
  end

  # POST /purchases or /purchases.json
  def create
    @purchase = Purchase.new(purchase_params)
    @suppliers = current_user.suppliers
    @purchase.user_id = current_user.id
    respond_to do |format|
      if @purchase.save
        format.html { redirect_to purchase_url(@purchase), notice: "Purchase was successfully crated." }
        format.json { render :show, status: :ok, location: @purchase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end

    
  end

  # PATCH/PUT /purchases/1 or /purchases/1.json
  def update
    respond_to do |format|
      if @purchase.update(purchase_params)
        format.html { redirect_to purchase_url(@purchase), notice: "Purchase was successfully updated." }
        format.json { render :show, status: :ok, location: @purchase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchases/1 or /purchases/1.json
  def destroy
    @purchase.destroy

    respond_to do |format|
      format.html { redirect_to purchases_url, notice: "Purchase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase
      @purchase = Purchase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purchase_params
      params.require(:purchase).permit(:purchase_date, :supplier_id)
    end

    def create_respond
      respond_to do |format|
        if PurchaseFilledChecker.call(@purchase) and @purchase.save
          format.html { redirect_to purchase_url(@purchase), notice: "Purchase was successfully created." }
          format.json { render :show, status: :created, location: @purchase }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @purchase.errors, status: :unprocessable_entity }
        end
      end
    end
end
