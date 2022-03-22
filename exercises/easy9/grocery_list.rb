# grocery_list.rb
# method that takes 1 array, agrocery list with quantities
# return 1 array of the correct number of each fruits

def buy_fruit(array)
  array.map{|fruit| ((fruit[0] + ' ') * fruit[1]).split}.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

# LS Solution:
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

list.each do |fruit, quantity|
  quantity.times { expanded_list << fruit }
end
