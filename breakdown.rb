@i = "Yes"
def continue
	puts "Would you like to see another breakdown?"
	@i = gets.chomp.capitalize
end

until @i == "No"
	puts "Would you like to know how much you make: 
	----monthly
	----hourly
	----daily
	----by minute?"
	frequency = gets.chomp

	case frequency
	when "monthly"
		puts "You make $#{@monthly.round(2)} per month."
		continue
	when "daily"
		puts "You make $#{@daily.round(2)} per day"
		continue
	when "hourly"
		puts "You make $#{@hourly.round(2)} per hour."
		continue
	when "by minute"
		puts "You make $#{@minutely.round(2)} every minute."
		continue
	else
		puts "You entered an invalid option."
	end
end