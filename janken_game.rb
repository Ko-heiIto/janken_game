def janken
  puts "［0］：グ－\n［1］：チョキ\n［2］：パ－"

  player_hand = gets.to_i
  program_hand = rand(3)

  jankens = ["グ－", "チョキ", "パ－"]

  puts "あなたの手：#{jankens[player_hand]}, わたしの手：#{jankens[program_hand]}"

  if player_hand == program_hand
    puts "あいこで"
    return true
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    return false
  else
    puts "あなたの負けです"
    return false
  end
end

next_game = true
puts "最初はグ－じゃんけん・・・"

while next_game
  next_game = janken
end