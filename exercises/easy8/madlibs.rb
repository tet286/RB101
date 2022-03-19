# madlibs.rb
# create a simple madlibs program that prompt: a noun, a verb, an adverb, an adjective

def data_hash(input_array)
  madlibs_hash = input_array.each_with_object({}) do |elm, hash|
    print "Enter #{elm.start_with?(/[aeiou]/) ? 'an': 'a'} #{elm}: "
    hash[elm] = gets.chomp
  end
  madlibs_hash
end

def madlibs()
  input_array = [:noun, :verb, :adjective, :adverb]
  data = data_hash(input_array)
  print "Do you #{data[:verb]} your #{data[:adjective]} " +
        "#{data[:noun]} #{data[:adverb]}?" + " That's hilarious!\n"
end

madlibs()
