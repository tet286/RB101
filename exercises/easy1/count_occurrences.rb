# count_occurrences.rb
# method that counts the number of occurrences of each element in a given array.

def count_occurrences(array)
  unique_elm = array.uniq # array of unique element of the org array
  unique_elm.length.times do |i| # for each unique element
    element = unique_elm[i] # current unique element
    count = array.select{|elm| elm == element}.count # store the number of unique elm in an array and count
    puts "#{element} => #{count}" 
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
