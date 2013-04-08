require_relative 'job'
require_relative 'income'


puts "Would you like to know how much you make:
monthly
hourly
daily
by minute?"
frequency = gets.chomp
if frequency == "monthly"
	puts "You make $#{@monthly.round(2)} per month."
elsif frequency == "daily"
	puts "You make $#{@daily.round(2)} per day"
elsif frequency == "hourly"
	puts "You make $#{@hourly.round(2)} per hour."
elsif frequency == "by minute"
	puts "You make $#{@minutely.round(2)} every minute."
else
	puts "You entered an invalid option."
end