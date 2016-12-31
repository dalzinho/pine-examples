puts "Hello there! I calculate all the leap years between two given years"

puts "Plaese enter a starting year: "
start_year = gets.chomp.to_i
puts ''
puts "Please put an ending year"
end_year = gets.chomp.to_i

# leap_years = (start_year..end_year).to_a.select { |year| year % 400 == 0 || year % 4 == 0 }.reject { |year| year % 100 == 0}

leap_years = []

(start_year..end_year).each do |year|
  if year % 100 == 0
    if year % 400 == 0
      leap_years << year
    end
  elsif year % 4 == 0
    leap_years << year
  end
end

print leap_years