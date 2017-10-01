#Table of contents,revisited
line_width = 60
left = 30
right = 20
puts("Table of Contents".center(line_width))
array = [["Chapter 1:  Getting Started", "page  1"], ["Chapter 2:  Numbers", "page  1"], ["Chapter 3:  Letters", "page  1"]]
array.each{|a| puts a[0].ljust(left) + a[1].rjust(right)}
