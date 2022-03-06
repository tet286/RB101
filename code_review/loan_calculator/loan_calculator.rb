# loan_calculator.rb
# this program calculate the monthly payment for a loan (mortgage, car loan, etc.)

require 'yaml'
MESSAGES = YAML.load_file('message.yml')

# methods:
def prompt(key)
  message = MESSAGES[key]
  Kernel.puts("=> #{message}")
end

def value_to_float()
  value = Kernel.gets().chomp().to_f
end

def get_valid_value()
  loop do
  value = value_to_float()
    if value <= 0
      prompt('valid_number')
    else
      return value
    end
  end
end

# main program:
loop do
  # input:
  prompt('welcome')
  prompt('loan_amount')
  loan_amount = get_valid_value()

  prompt('apr')
  prompt('example_apr')
  interest_rate = get_valid_value()

  prompt('duration')
  duration_year = get_valid_value()
  
  # convert values to use formula:
  interest_rate_month = interest_rate.to_f() / 100 / 12 # convert interest to month
  duration_month = duration_year.to_i() * 12            # convert duration to month
  
  # calculate monthly payment:
  monthly_payment = loan_amount * (interest_rate_month/(1-(1+interest_rate_month)**(-duration_month)))

  # output monthly payment with 2 decimal digits"
  prompt('ta-da!')
  Kernel.puts("=> Your monthly payment is $#{format('%.2f', monthly_payment)}")
  prompt('ta-da!')

  # ask if user wants to continue the program:
  prompt('continue')
  answer = Kernel.gets().chomp().downcase
  
  break unless answer.start_with?('y')
end

prompt('thank_you_bye') 

# For fun:
puts File.read('ascii_art.txt')