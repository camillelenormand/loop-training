def half_pyramid 
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  user_input = gets.chomp.to_i
  puts "Ok, voici la pyramide!"

for row in 0..user_input
  row.times {
    print " "
  }
  (user_input - row).times {
    print "#"
  }
  puts
  end 
end

def full_pyramid
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
user_input = gets.chomp.to_i
puts "Ok, voici la pyramide!"

for row in 0..user_input
  (user_input - row).times {
    print " "
  }

  row.times {
    print "#"
  }

  (row - 1).times {
    print "#"
  }
  
  puts
  end 
end

def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  rows = gets.chomp.to_i
  puts "Ok, voici la pyramide!"
  
  #first pyramid
  for row in 0..rows
    (rows-row).times {print " "}
    row.times {print "*"}
    (row-1).times {print "*" }
    puts
  end
  
  #reverse pyramid
  for row in 0..rows
    row.times {print " "}
    (rows-row).times {print "*" }
    (rows-row-1).times {print "*"}
    puts
  end
end

wtf_pyramid