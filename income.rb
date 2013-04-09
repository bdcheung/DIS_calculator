@monthly = @income.to_f / 12
@weekly = @income.to_f / 52
@daily = @weekly / 5
if @category == "wage"
	@hourly = @wage.to_f
else
	@hourly = @daily / 8
end
@minutely = @hourly / 60