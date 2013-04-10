puts "What would you like to buy?"
name = gets.chomp
puts "How much does it cost?"
cost = gets.chomp.to_f
puts "You want to buy #{name} which costs #{cost}."
puts ""
puts "But the actual cost is:"

i = cost.divmod(@income.to_f)
if i[0] >= 1
	puts "#{i[0]} years"
end

a = i[1].divmod(@monthly.to_f)
if a[0] >= 1
	puts "#{a[0]} months"
end

e = a[1].divmod(@daily.to_f)
if e[0] >= 1
	puts "#{e[0]} days"
end

o = e[1].divmod(@hourly.to_f)
if o[0] >= 1
	puts "#{o[0]} hours"
end
u = o[1].divmod(@minutely.to_f)
puts "and #{u[0].to_i} minutes of work"