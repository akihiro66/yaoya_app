# 商品データ
products = [
  {name: "トマト", price: 100},
  {name: "きゅうり", price: 200},
  {name: "玉ねぎ", price: 300},
  {name: "なす", price: 400}
]

# 商品を表示
puts "いらっしゃいませ！商品を選んで下さい。"
products.each.with_index(1) do |product,i|
  puts "#{i}.#{product[:name]}(#{product[:price]}円)"
end

# 商品を選択
print "商品の番号を選択 > "
select_product_num = gets.to_i
chosen_product = products[select_product_num - 1]
