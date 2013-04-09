puts "Do you work for a:
	salary
	wage"
@category = gets.chomp.downcase

if @category == "salary"
	puts "How much do you make per year?"
	@income = gets.chomp
elsif @category == "wage"
	puts "How much do you make per hour?"
	wage = gets.chomp
	puts "How many hours do you work per week?"
	weekly_hours = gets.chomp
	@income = wage.to_f * weekly_hours.to_f * 52
	puts "You make roughly $#{@income.round(2)} every year.

	Type 'OK' to continue"
	throwaway = gets
end