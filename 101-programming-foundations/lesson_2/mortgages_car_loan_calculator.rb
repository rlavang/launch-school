def prompt(message)
  Kernel.puts("=> #{message}")
end

def validate_number(number)
  Float(number) 
  rescue ArgumentError
    false
end

def input_validation_loop
  number = Kernel.gets().chomp()
  loop do
    if validate_number(number) && number.to_f >= 0
      return number
    else
      prompt("Please resubmit a proper numerical amount.")
      number = Kernel.gets().chomp()
    end
  end
end

loop do
  # Initialize variables first
  loan_amount = ''
  annual_percentage_amount = ''
  loan_duration_months = ''

  prompt("Welcome to your Mortgage and Car Loan Calculator!")

  prompt("What is your loan amount?")
  loan_amount = input_validation_loop()

  prompt("Please provide an Annual Percentage Amount.")
  annual_percentage_amount = input_validation_loop()

  prompt ("Please provide the loan duration amount in months")
  loan_duration_months = input_validation_loop()

  loan_amount = loan_amount.to_f
  annual_percentage_amount = annual_percentage_amount.to_f
  monthly_interest_rate = (annual_percentage_amount / 100) / 12
  loan_duration_months = loan_duration_months.to_f

  monthly_payment = loan_amount *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))

  Kernel.puts("Your monthly payment is: #{format('%02.2f', monthly_payment)}")
  prompt("Do you wish to do another calculation? Press y for yes")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thanks for using the calculator!")
