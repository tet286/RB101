# loan_calculator.rb
# this program calculate the monthly payment for a loan (mortgage, car loan, etc.)

# def method ultilized: (Note that break can't be use in def method)
def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  # input:
  prompt("Welcome to the loan calculator!\nPlease Enter your total loan amount:")
  loan_amount = " "
  loop do
    loan_amount = Kernel.gets().chomp()
    if loan_amount.empty?() || loan_amount.to_f() < 0
      prompt("Must enter a positive number other than zero.")
    else
      break
    end
  end
  loan_amount = loan_amount.to_f()

  prompt("What is your Annual Percentage Rate (APR)?")
  prompt("Example: 5 for 5% or 2.5 for 2.5%")
  interest_rate = " "
  loop do
  interest_rate = Kernel.gets().chomp()
    if interest_rate.empty?() || interest_rate.to_f() < 0
      prompt("Must enter a positive number other than zero.")
    else
      break
    end
  end

  prompt("What is the loan duration (in years)?")
  duration_year = " "
  loop do
    duration_year = Kernel.gets().chomp()  
    if duration_year.empty?() || duration_year.to_f() < 0
        prompt("Must enter a positive number other than zero.")
    else
    break
    end
  end
  
  # convert values to use formula:
  interest_rate_month = interest_rate.to_f() / 100 / 12 # convert interest to month
  duration_month = duration_year.to_i() * 12            # convert duration to month
  
  # calculate monthly payment:
  monthly_payment = loan_amount * (interest_rate_month/(1-(1+interest_rate_month)**(-duration_month)))

  # output monthly payment with 2 decimal digits"
  prompt("Your monthly payment is $#{format('%.2f', monthly_payment)}")

  # ask if user wants to continue the program:
  prompt("Do you want another loan calculation? (Y/N)")
  answer = Kernel.gets().chomp().downcase
  
  break unless answer.start_with?('y')
end

prompt("Thank you for using the loan calculator!")
prompt('Goodbye!')
  