class HomeController < ApplicationController
  def index
    @suppliers = current_user.suppliers
    @products = current_user.products
    @purchases = current_user.purchases
  end
end
