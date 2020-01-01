#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit <- revenue - expenses
profit

?round()

# profit after tax
tax <- round(0.3*profit,2)
tax

profit.after.tax <- profit-tax
profit.after.tax

# profit marging
profit_mar = round(profit.after.tax/revenue,2)*100
profit_mar

#Good months
mean_par <- mean(profit.after.tax)

good.months <- profit.after.tax > mean_par
good.months


# Bad months

bad.months <- !good.months
bad.months

#best months
best.month <- profit.after.tax == max(profit.after.tax)
best.month


#worst months
worst <- profit.after.tax ==min(profit.after.tax)
worst


# Units of thousends 
revenue.1000 <- round(revenue/1000,2)
expenses.1000 <- round(expenses/1000,2)
profit
