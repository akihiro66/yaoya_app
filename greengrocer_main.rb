require "./methods.rb"

class Product
  attr_reader :name, :price
  def initialize(product_params)
    @name = product_params[:name]
    @price = product_params[:price]
  end
end

# 商品データ
product_params = [
  {name: "トマト", price: 100},
  {name: "きゅうり", price: 200},
  {name: "玉ねぎ", price: 300},
  {name: "なす", price: 400}
]

# 商品インスタンスの生成
products = []
product_params.each do |param|
  products << Product.new(param)
end

# 八百屋の開店
greengrocer = Greengrocer.new(porducts)
# 商品を表示
greengrocer.disp_products

# 定数を設定。ここでの変更がコード全体に反映される
FIRST_PRODUCT_NUM = 1 # 表示する最初の商品の番号（変更可）
LAST_PRODUCT_NUM = (FIRST_PRODUCT_NUM + products.size) - 1 # 表示する最後の商品の番号（変更不可）
DISCOUNT_STANDARD_VALUE = 5 # 割引を適用する個数の基準値（変更可）
DISCOUNT＿RATE = 0.1 # 割引率（変更可）
AFRER_DISCOUNT_RATE = 1 - DISCOUNT＿RATE # 割引後の本体価格の割合（変更不可）

disp_products(products) # 商品を表示
chosen_product = choose_product(products) # 商品を選択
quantity_of_product = decide_quantity(chosen_product) # 商品の個数を決定
calculate_charges(chosen_product, quantity_of_product) # 合計金額を計算