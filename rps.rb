require "csv" 
   puts "じゃんけん & あっち向いてホイゲームを始めます。"
   puts "両方に勝ってください！！"
   puts "じゃんけん・・・ポン！！"
   puts ""
   puts "0(グー)1(チョキ)2(パー)3(戦わない)"
   
 def janken
   select_number = gets.to_i
   if !(select_number == 0 || select_number == 1 || select_number ==2)
     select_number = 3
   end
   random_number = rand(3)
  jankens = ["グー","チョキ","パー","戦わない"]
   puts "あなた：#{jankens[select_number]} 相手：#{jankens[random_number]}"
   
   puts ""
   puts "------------------------------"
   puts ""
   
  if select_number ==3 || random_number == 3
    puts"じゃんけんが放棄されました。ゲームを終了します。"
    exit
  end
  
  number = select_number - random_number
    if number == 0
       puts "「あいこ」です。もう一度じゃんけんをします。"
       puts "じゃんけん・・・ポン！！"
       puts ""
       puts "0(グー)1(チョキ)2(パー)3(戦わない)"
       loop do
            f1 = janken
            break if f1
            end
    elsif number == 1 || number == -2
       puts "じゃんけんに「負け」ました。"
       puts "続いてあっち向いてホイをやります。"
       puts "相手が指す方向と同じ方向を向くと「負け」です。"
       puts ""
       puts "あっち向いて・・・ホイ！！"
       puts ""
       puts "0(上)1(下)2(左)3(右)"
       loop do
            f2 = acchimuite_hoi
            break if f2
           end
    else number == -1 || number == 2
       puts "じゃんけんに「勝ち」ました。"
       puts "続いてあっち向いてホイをやります。"
       puts "相手が向く方向と同じ方向を指せば「勝ち」です!!"
       puts ""
       puts "あっち向いて・・・ホイ！！"
       puts ""
       puts "0(上)1(下)2(左)3(右)"
       loop do
            f2 = acchimuite_hoi
            break if f2
           end
   end
 end

def acchimuite_hoi
 select_number2 = gets.to_i
 random_number2 = rand(3)
 directions = ["上","下","左","右"]
  puts"ホイ！"
  puts "あなた：#{directions[select_number2]} 相手：#{directions[random_number2]}"
  
  puts ""
  puts "------------------------------"
  puts ""

 if select_number2 == random_number2
  puts "決着がつきました。"
  puts "お疲れ様でした！！"
  exit
  else
    puts "決着がつきませんでした"
    puts "もう一度じゃんけんをします。"
    puts "じゃんけん・・・ポン！！"
    puts ""
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    loop do
         f1 = janken
         break if f1
         end
   false
  end
end

  f1 = janken
  loop do
  f2 = acchimuite_hoi
  break if f2
  end
