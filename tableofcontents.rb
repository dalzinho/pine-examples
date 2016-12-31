line_width = 50
puts "Table of Contents".center(line_width)

contents = [["Chapter 1:", "Getting Started", "Page 1"], ["Chapter 2:", "Numbers", "Page 9"], ["Chapter 3:", "Letters", "Page 13"]]

contents.each do |chapter, title, page|
print "#{chapter}".ljust(20)
print "#{title}".ljust(30)
print "#{page}".rjust(10)
print "\n"
end