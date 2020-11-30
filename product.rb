class Product
  attr_reader :name, :price

  def initialize(product_params)
    @name = product_params[:name]
    @price = product_params[:price]
  end
end
