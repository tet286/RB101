# calculator_refactor.rb
# This program polishes the calculator.rb
# add prompt() method
# instead of if/else, use case statement
# check valid number not 0
# loop until user wants to STOP
# extract messages using yml config file

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

LANGUAGE = 'en'

def valid_number?(num)
  num != 0
end

def operation_to_message(operation)
  case operation
  when "add"
    'Adding'
  when 'subtract'
    'Subtracting'
  when 'multiply'
    'Multiplying'
  when 'divide'
    'Dividing'
  end
end


prompt('welcome')
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

prompt("Hi #{name}!")

loop do #main
  # input and check valid number until we get the right number:
  num_1 = ""
  loop do
    prompt("Please enter the first number: ")
    num_1 = Kernel.gets().chomp().to_f

    if valid_number?(num_1)
      break
    else
      prompt("Hm.. that doesn't look like a valid number")
    end
  end

  num_2 = ""
  loop do
    prompt("Please enter the second number: ")
    num_2 = Kernel.gets().chomp().to_f

    if valid_number?(num_2)
      break
    else
      prompt("Hm.. that doesn't look like a valid number")
    end
  end

  operation_prompt = <<-MSG
    Please specify which type of operation to perform?
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG
  prompt(operation_prompt)
  
  operation = " "
  loop do
    operation = Kernel.gets().chomp().downcase

    if %w(add subtract multiply divide).include?(operation)
      break
    else
      prompt("Must choose add, subtract, multiply, or divide")
    end
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  # if/else and output (old calculator.rb code)
  #if operation == 'add'
  #  prompt(result = num_1 + num_2)
  #elsif operation == 'subtract'
  #  prompt(result = num_1 - num_2)
  #elsif operation == "multiply"
  #  prompt(result = num_1 * num_2)
  #else
  #  prompt(result = num_1 / num_2)
  #end

  # case statement:
  result =  case operation
            when 'add'
              num_1 + num_2
            when 'subtract'
              num_1 - num_2
            when 'multiply'
              num_1 * num_2
            when 'divide'
              num_1 / num_2
            end           

  # output:
  prompt(result)           

  prompt("Do you want to perform another calculation?(Y/N)")
  answer = Kernel.gets().chomp().downcase
  break unless answer.start_with?('y')

end