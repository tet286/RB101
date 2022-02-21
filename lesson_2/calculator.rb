# calculator.rb
# This program does the following:
# 1. asks for 2 numbers
# 2. ask for the type of operation to perform: 
# add, subtract, multiply, or divide
# 3. display the result

# input:
Kernel.puts("Welcome to Calculator!\nPlease enter the first number: ")
num_1 = Kernel.gets().chomp().to_f
Kernel.puts("Please enter the second number: ")
num_2 = Kernel.gets().chomp().to_f

Kernel.puts("Please specify which type of operation to perform (Add/ Subtract/ Multiply/Divide): ")
operation = Kernel.gets().chomp().downcase

# if/else and output:
if operation == 'add'
  Kernel.puts(result = num_1 + num_2)
elsif operation == 'subtract'
  Kernel.puts(result = num_1 - num_2)
elsif operation == "multiply"
  Kernel.puts(result = num_1 * num_2)
else
  Kernel.puts(result = num_1 / num_2)
end

