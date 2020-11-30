require "./product.rb"
require "./greengrocer.rb"
require "./user.rb"

# 商品データ
product_params1 = [
  {name: "トマト", price: 100},
  {name: "きゅうり", price: 200},
  {name: "玉ねぎ", price: 300},
  {name: "なす", price: 400}
]

product_params2 = [
  {name: "パセリ", price: 100},
  {name: "ブロッコリー", price: 150}
]

# 八百屋の開店
greengrocer1 = Greengrocer.new(product_params1)
greengrocer2 = Greengrocer.new(product_params2)
# 商品を表示
greengrocer1.disp_products
greengrocer2.disp_products

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