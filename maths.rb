puts "What would you like to buy?"
name = gets.chomp
puts "How much does it cost?"
cost = gets.chomp.to_f
puts "You want to buy #{name} which costs #{cost}."

if cost / @income.to_f >= 1
	true_cost_years = cost / @income.to_f
	true_cost_months = (cost % @income.to_f) / @monthly.to_f
	puts "The true cost is #{true_cost_years.to_i} years and #{true_cost_months.to_i} months worth of pay"
elsif cost / @monthly.to_f >= 1
	true_cost = cost / @monthly.to_f
	puts "The true cost is #{true_cost.to_i} months worth of pay"
elsif cost / @weekly.to_f >= 1
	true_cost = cost / @weekly.to_f
	puts "The true cost is #{true_cost.to_i} weeks worth of pay"
elsif cost / @daily.to_f >= 1
	true_cost = cost / @daily.to_f
	puts "The true cost is #{true_cost.to_i} days worth of pay"
elsif cost / @hourly.to_f >= 1
	true_cost = cost / @hourly.to_f
	puts "The true cost is #{true_cost.to_i} hours worth of pay"
elsif cost / @minutely.to_f >= 1
	true_cost = cost / @minutely.to_f
	puts "The true cost of this is #{true_cost.to_i} minutes worth of pay"
else
	puts "Why do you even bother asking? You know you can afford it, dummy!"
end