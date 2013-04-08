@monthly = @income.to_f / 12
@weekly = @income.to_f / 52
@daily = @weekly / 5
@hourly = @daily / 8
@minutely = @hourly / 60