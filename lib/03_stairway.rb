def stairway
# init player's position
position = 0

# Keep rolling until 10th position is reached
while position < 10
  die_roll = rand(1..6)

  # Set conditions

  # S’il fait 1, il descend d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
  if die_roll == 1
    position -= 1
    puts "Tu as tiré un 1, tu descends d'une marche. Position actuelle: #{position}. 🫣🫣🫣"
  # S’il fait 5 ou 6, il avance d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
  elsif die_roll == 5 || die_roll == 6
    position += 1
    puts "Bravo! Tu as avancé d'une marche. Position actuelle: #{position}. 🕺🕺🕺🕺"

  # S’il fait 2, 3, ou 4 rien ne se passe, et le programme le lui dit (ainsi que la marche où il est resté)
  else
    puts "Tu restes à la même marche. Position actuelle: #{position}. 🥵🥵🥵🥵"
  end
end
puts "✨✨✨✨✨✨✨✨🎇🎇🎇 Bravo! Tu as atteint le sommet de l'escalier! 🎇🎇🎇🎇 ✨✨✨✨✨✨✨✨"
end
puts stairway