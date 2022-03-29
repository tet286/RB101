# stack_machine.rb
# method that implement a miniture stack-and-register-based programming language
# that has the following commands:
# 1) n - place a value in the register. Stack is NOT modified
# 2) PUSH - push the register value on to the stack
# 3) ADD - pops a value from the stack and adds it to the register value
# 4) SUB - pops a value from the stack and subtracts it from the register value
# 5) MULT - like add but multiplies it from the register value
# 6) DIV - like add but divides it from the register value
# 7) MOD - like DIV but store the remainder
# 8) POP - remove the topmost item from the stack and place in register
# 9) PRINT - print the register value

# all operations are integer operations 
# register initialized at 0

def number?(string)
  string.to_i.to_s == string
end

def operation(command, stack, register)
  case command
  when 'PRINT'
    puts register
  when 'PUSH'
    stack << register
  when 'POP'
    register = stack.pop
  when 'ADD'
    register = register + stack.pop
  when 'SUB'
    register = register - stack.pop
  when 'MULT'
    register = register * stack.pop
  when 'DIV'
    register = register / stack.pop
  when 'MOD'
    register = register % stack.pop
  end
  register
end

def minilang(commands)
  stack = []
  register = 0
  commands = commands.split
  commands.size.times do |i|
    if number?(commands[i])
      register = commands[i].to_i
      next
    else
      register = operation(commands[i], stack, register)
    end
  end
end 


minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# LS Solution:
def minilang(program)
  stack = []
  register = 0
  program.split.each do |token|
    case token
    when 'ADD'   then register += stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'SUB'   then register -= stack.pop
    when 'PUSH'  then stack.push(register)
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else              register = token.to_i
    end
  end
end
