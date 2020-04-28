# 実行  ruby hash2.rb


params1 = { name: "田中", age: 30, height: 160 }
params2 = { name: "佐藤", age: 70, height: 150 }
params3 = { name: "鈴木", age: 10, height: 120 }


@param1 = params1
@param2 = params2
@param3 = params3


def info
  puts "#{@param1[:name]}さん"
  puts @param1[:age] < 65 ? "年齢 #{@param1[:age]}歳:年齢確認OK" : "年齢 #{@param1[:age]}歳:年齢確認NG"
  puts @param1[:height] > 129 ? "身長 #{@param1[:height]}歳:身長確認OK" : "身長 #{@param1[:height]}cm:身長確認NG"
  puts ""
  puts @param1[:age] < 65 && @param1[:height] > 129 ? "ご利用いただけます" : "ご利用いただけません"
end


def info2
  puts "#{@param2[:name]}さん"
  puts @param2[:age] < 65 ? "年齢 #{@param2[:age]}歳:年齢確認OK" : "年齢 #{@param2[:age]}歳:年齢確認NG"
  puts @param2[:height] > 129 ? "身長 #{@param2[:height]}歳:身長確認OK" : "身長 #{@param2[:height]}cm:身長確認NG"
  puts ""
  puts @param2[:age] < 65 && @param2[:height] > 129 ? "ご利用いただけます" : "ご利用いただけません"
end


def info3
  puts "#{@param3[:name]}さん"
  puts @param3[:age] < 65 ? "年齢 #{@param3[:age]}歳:年齢確認OK" : "年齢 #{@param3[:age]}歳:年齢確認NG"
  puts @param3[:height] > 129 ? "身長 #{@param3[:height]}歳:身長確認OK" : "身長 #{@param3[:height]}cm:身長確認NG"
  puts ""
  puts @param3[:age] < 65 && @param3[:height] > 129 ? "ご利用いただけます" : "ご利用いただけません"
end

puts "---------------------"
info
puts "---------------------"
info2
puts "---------------------"
info3
puts "---------------------"
