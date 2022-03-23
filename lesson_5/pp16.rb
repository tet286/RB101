# pp16.rb
# write a method that returns one UUID when called with no parameters
# UUID is a type identifier often used as a way to uniquely identify item
# Each UUID consists of 32 hexadecimal characters, and broken into 5 sections
# 8 - 4 - 4 - 4 - 12
# and represented as a string
# ex: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

SECTION = [8, 4, 4, 4, 12]
CHARACTER = ('a'..'f').to_a + (1..9).to_a

def UUID()
  result = []
  SECTION.each do |n|
    n.times do
      result << CHARACTER.sample
    end
    result << '-' unless n == SECTION[4]
  end
  p result.join
end

UUID()

# LS Solution:
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end
