class Greengrocer
  def initialize(products)
    @products = []
    product_params.each do |param|
      @products << Product.new(param)
    end
  end
  
  # 商品を表示
  def disp_products
    puts "いらっしゃいませ！商品を選んで下さい。"
    @products.each.with_index(FIRST_PRODUCT_NUM) do |product,i|
      puts "#{i}.#{product.name}(#{product.priec}円)"
    end
  end
end