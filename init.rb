#!/usr/bin/env ruby

require 'date'

days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

puts "----------------------"
puts "| Birthdate Analysis |"
puts "----------------------"

puts "What year were you born?"
print "> "
year = gets.chomp

puts "What number month were you born?"
print "> "
month = gets.chomp

puts "What date of the month were you born?"
print "> "
date = gets.chomp

puts

birthdate = Date.new(year.to_i, month.to_i, date.to_i)

puts "-" * 20

puts "You were born on a #{days[birthdate.wday]}"

puts "It was the #{birthdate.cweek} week of the year."

puts "It was the #{birthdate.yday} day of the year."

if birthdate.leap?
  puts "You were born in a leap year."
else
  puts "You were not born in a leap year."
end

puts "-" * 20
puts
