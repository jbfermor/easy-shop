class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  def check_pending_purchase
    if !current_user.purchases.empty? and current_user.purchases.last.status = 0
      redirect_to purchase_url(current_user.purchases.last.id), alert: "Debes añadir al menos un producto o eliminar el pedido"
    end
  end
end
