class HomeController < ApplicationController
  before_action :check_pending_purchase

  def index
    @suppliers = current_user.suppliers
    @products = current_user.products
    @purchases = current_user.purchases
  end
end
