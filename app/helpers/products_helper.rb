module ProductsHelper
  def product_active?(product)
    if product.active == true
      return "Activo"
    else
      return "No activo"
    end
  end
end
