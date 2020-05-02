# 実行  ruby index.rb


drink_types = [
  { drink: "コーラ", price: 150 },
  { drink: "お茶", price: 140 },
  { drink: "オレンジジュース", price: 130 },
  { drink: "コーヒー", price: 120 },
  { drink: "紅茶", price: 110 },
  { drink: "水", price: 100 },
]


@drink_types = drink_types


# 商品選択

NUMBER_MUCH = 1

def drink_select


  @drink_types.each.with_index(1) do |drink_type, i|
    puts "番号:#{i},#{drink_type[:drink]},#{drink_type[:price]}円"
  end
  
  puts ""
  puts "番号をお選びください。"
  
  while true

    print " > "
    
    num = gets.to_i
    
    if num < 1 || 6 < num
      puts ""
      puts "1〜6の番号を入力してください。"
      next
    end
    
    break
  end
  
  drink_num = num - NUMBER_MUCH
  
  @drink_select = @drink_types[drink_num]

  puts ""
  puts "#{@drink_select[:drink]}ですね、#{@drink_select[:price]}円になります。"

end


# お金の入力

def drink_money

  while true
  
    puts ""
    puts "10,50,100,500,1000で入力してください。"
    print " > "
    
    @in_price = gets.to_i

    case @in_price

    when 10, 50, 100, 500, 1000

      if @in_price > @drink_select[:price]
        break
      else
        puts "現在#{@in_price}円投入されています。"
        puts "残り#{@drink_select[:price] - @in_price}円投入してください"

        next
      end

    else
      puts "入力された数値がおかしいです"
      next
    end
  end

end
  

#お釣りの返却

def drink_change

  change = @in_price - @drink_select[:price]
  puts ""
  puts "#{change}円のお釣りになります。ありがとうございました。"

end


drink_select

drink_money

drink_change