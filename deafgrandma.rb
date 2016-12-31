def random_year
  year = 1920 + rand(50)
  puts "NO! NOT SINCE #{year}"  
end

something_nice = "_"

until something_nice == "BYE"

  puts "Say something nice to your granny:"
  print "> "
  something_nice = gets.chomp

  if something_nice == something_nice.upcase
    random_year
  else
    puts "HUH?! SPEAK UP SONNY!!"
  end

end