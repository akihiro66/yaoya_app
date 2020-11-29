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