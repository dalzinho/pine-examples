#From Pine p. 97

puts "Please enter your date of birth (DDMMYYYY)"
print "> "
date_of_birth = gets.chomp

puts "And your time of birth (HHMM) [Leave this blank if you don't know!]"
print "> "
time_of_birth = gets.chomp

day = date_of_birth[0..1].to_i
month = date_of_birth[2..3].to_i
year = date_of_birth[4..8].to_i
hour = time_of_birth[0..1].to_i
minute = time_of_birth[2..3].to_i

t = Time.local(year, month, day, hour, minute)
one_billion = t + 1_000_000_000

if one_billion > Time.now
  puts "You will turn one billion seconds old on #{one_billion.strftime("%A, %d %B %Y at %H:%M")}"
  puts "Use your remaining seconds wisely, Padawan."

else
  puts "You turned one billion seconds old on #{one_billion.strftime("%A, %d %B %Y at %H:%M")}"
  puts "This crushing insight into the futility of existence has been brought to you free of charge!"
end

