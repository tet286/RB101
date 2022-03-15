# problem_1.rb
# turn an array into a hash 
# where the elements are keys and positions (indices) are values

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = flintstones.each_with_object({}) do |elm, hash|
  hash[elm] = flintstones.index(elm)
end

p flintstones_hash

# Other solution with each_with_index:
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
