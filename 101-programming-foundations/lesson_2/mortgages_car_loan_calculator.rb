require"pry"

def prompt(message)
  puts("=> #{message}")
end

def validate_number(number)
  Float(number) rescue false
end

def validate_percentage(number)
  true if number.to_f <= 1 && number.to_f >= 0
end

#Initialize variables first
loan_amount = ''
annual_percentage_amount = ''
loan_duration_months = ''

prompt("Welcome to your Mortgage and Car Loan Calculator!\nBefore we begin. I will require some information")
prompt("What is your loan amount?")

loop do
  loan_amount = Kernel.gets().chomp()
  if validate_number(loan_amount)
    break
  else
    prompt("Please resubmit a proper numerical amount. Thank you.")
  end
end

prompt("Please provide an Annual Percentage Amount.")

loop do
  annual_percentage_amount = Kernel.gets().chomp()
  if validate_number(annual_percentage_amount)
    break
  else
    prompt("Please resubmit a proper numerical amount. Thank you.")
  end
end

prompt ("Please provide the loan duration amount in months")

loop do
  loan_duration_months = Kernel.gets().chomp()
  if validate_number(loan_duration_months)
    break
  else
    prompt("Please resubmit a proper numerical amount. Thank you.")
  end
end

loan_amount = loan_amount.to_f 
annual_percentage_amount = annual_percentage_amount.to_f
monthly_interest_rate = (annual_percentage_amount / 100) / 12
loan_duration_months = loan_duration_months.to_f

m = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))
puts m

binding.pry

## if validate_percentage(annual_percentage_amount)
 ##     break
  #3  else
   #   prompt("You must provide a fractional number between 0 and 1. Please resubmit a new number")
   # end

    ###