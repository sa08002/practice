# 実行  ruby index.rb

drink_types = [
  { drink: "コーラ", price: 150 },
  { drink: "お茶", price: 140 },
  { drink: "オレンジジュース", price: 130 },
  { drink: "コーヒー", price: 120 },
  { drink: "紅茶", price: 110 },
  { drink: "水", price: 100 },
]

drink_types.each.with_index(1) do |drink_type, i|
  puts "番号:#{i},#{drink_type[:drink]},#{drink_type[:price]}円"
end

puts  
puts "番号をお選びください。"

while true
  num = gets.to_i

  if num < 1 || 6 < num
    puts "1〜6の番号を入力してください。"
    next
  end
    
  break
end

drink_num = num - 1

drink_select = drink_types[drink_num]


puts "#{drink_select[:drink]}ですね、#{drink_select[:price]}円になります。"

while true
  in_price = gets.to_i
  
  if in_price < drink_select[:price]
    puts "投入金額が足りません。もう一度入力してください。"
    next
  end

  break
end

change = in_price - drink_select[:price]
puts "#{change}円のお釣りになります。ありがとうございました。"