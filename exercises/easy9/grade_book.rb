# grade_book.rb
# method that takes 3 numbers, scores, determine the mean/avg
# return the letter value associated with that grade
# no need to check for negative value or value > 100

GRADE = {'A'=> (90..100), 'B'=> (80..90), 'C'=> (70..80), 'D'=> (60..70), 'F'=> (0..60)}

def get_grade(num1, num2, num3)
  score  = (num1 + num2 + num3) / 3
  p GRADE.select{|key, value| value.include?(score)}.keys[0]
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

# using case statement:
def get_grade(num1, num2, num3)
  score  = [num1, num2, num3].sum / 3.0
  case score 
  when (90..100) then 'A'
  when (80..90) then 'B'
  when (70..80) then 'C'
  when(60..70) then 'D'
  when (0..60) then 'F'
  end
end
