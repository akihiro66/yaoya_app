

# 商品を選択
def choose_product(products)
  while true
    print "商品の番号を選択 > "
    select_product_num = gets.to_i
    break if (FIRST_PRODUCT_NUM..LAST_PRODUCT_NUM).include?(select_product_num)
    puts "#{FIRST_PRODUCT_NUM}〜#{LAST_PRODUCT_NUM}の番号を入力して下さい。"
  end
  # インデックスを調整して「選んだ商品」を定義
  chosen_product_index = select_product_num - FIRST_PRODUCT_NUM
  chosen_product = products[chosen_product_index]
end


# 個数を決定
def decide_quantity(chosen_product)
  puts "#{chosen_product[:name]}ですね。何個買いますか？"
  while true
    print "個数を入力 > "
    quantity_of_product = gets.to_i
    break if quantity_of_product >= 1
    puts "1個以上選んで下さい。"
  end
  quantity_of_product
end

# 合計金額を計算
def calculate_charges(chosen_product, quantity_of_product)
  total_price = chosen_product[:price] * quantity_of_product
  if quantity_of_product >= DISCOUNT_STANDARD_VALUE
    puts "#{DISCOUNT_STANDARD_VALUE}個以上なので#{(DISCOUNT＿RATE*100).floor}％割引となります！"
    total_price *= AFRER_DISCOUNT_RATE
  end
  puts "合計金額は#{total_price.floor}円です。"
  puts "お買い上げありがとうございました。"
end