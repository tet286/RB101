# bonus.rb
# a method that takes 2 arguments, a positive number and a boolean
# returns: bonus calculated for a given salary
# if the boolean is true => bonus = 1/2, else bonus = 0
# calculate_bonus(salary,true/false)

def calculate_bonus(salary,boolean)
  bonus = 0
  bonus = salary / 2 if boolean
  bonus
end

# All tests below should print >> true:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# Better Solution:
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end