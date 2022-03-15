# fruit_select_transform.rb

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  selected_fruits = {}
  counter = 0

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == "Fruit"
      selected_fruits[current_key] = current_value
    end

    counter += 1
  
  end

  selected_fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}


def select_fruit(hash)
  selected_hash = hash.select{|key,value| value == "Fruit"}
end
