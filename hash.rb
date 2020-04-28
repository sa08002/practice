# 実行  ruby hash.rb


params = [
  { name: "田中", age: 30, height: 160 },
  { name: "佐藤", age: 70, height: 150 },
  { name: "鈴木", age: 10, height: 120 },
]
  

params.each do |param|

  puts "---------------------"

  puts "#{param[:name]}さん"
  puts param[:age] < 65 ? "年齢 #{param[:age]}歳:年齢確認OK" : "年齢 #{param[:age]}歳:年齢確認NG"
  puts param[:height] > 129 ? "身長 #{param[:height]}歳:身長確認OK" : "身長 #{param[:height]}cm:身長確認NG"
  puts ""
  puts param[:age] < 65 && param[:height] > 129 ? "ご利用いただけます" : "ご利用いただけません"

end

puts "---------------------"
