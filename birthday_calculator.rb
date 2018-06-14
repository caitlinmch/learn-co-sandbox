require 'date'
require 'colorize'

def days_to_next_bday(bday)
  d = Date.parse(bday)
  this_year = Date.today.year
  next_bday_this_year ="#{d.day}-#{d.month}-#{this_year}"
  
 (Date.parse(next_bday_this_year) - Date.today).to_i
end

puts "Enter your birthday (DD-MM-YYYY):".red
bday = days_to_next_bday(gets.chomp)
if bday < 0
  puts "Your birthday has already passed this year!".blue
elsif bday == 0
  puts "Happy Birthday!!!".blue
else 
  puts "There are #{bday} days until your birthday!".blue
end 

def days_to_next_bday_next_year(bday)
  d = Date.parse(bday)
  next_year = Date.today.year + 1
  next_bday_next_year = "#{d.day}-#{d.month}-#{next_year}"

 (Date.parse(next_bday_next_year) - Date.today).to_i
end

puts "Enter your birthday (DD-MM-YYYY) to find how many days until your birthday in 2019:".red
bday_2019 = days_to_next_bday_next_year(gets.chomp)

puts "There are #{bday_2019} until your birthday next year!".yellow