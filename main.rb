
require './player'
require './question'
require './game'

game = Game.new
while game.p1.score > 0 && game.p2.score > 0 do
  q = Question.new
  answer = q.generate(game.current_player.name)
  print "> "
  user_answer = $stdin.gets.chomp

  if user_answer.to_i === answer
    msg = "#{game.current_player.name}: Right"
  else
    msg = "#{game.current_player.name}: Seriously? No"
    game.next_player.lose
  end

  puts msg
  puts "p1: #{game.p1.score}/3 vs p2: #{game.p2.score}/3"
  game.turn
  
  if game.p1.score > 0 && game.p2.score > 0
    puts "------- New Turn --------"
  end

end