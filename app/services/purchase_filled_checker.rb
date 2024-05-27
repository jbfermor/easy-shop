class PurchaseFilledChecker
  def initialize(purchase)
    @purchase = purchase
  end

  #Check if a purchase is initialized with any purchase_line
  def call
    @purchase.purchase_lines.empty?
  end
end
