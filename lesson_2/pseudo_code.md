# pseudo-code practices #

1. a method that returns the sum of two integers
START
GET num_1 = first number
GET num_2 = second_number
SET result = num_1 + num_2
PRINT result
END

2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
START
GET arr_string = array of strings
SET just string = empty string
SET string_num = 0
WHILE string_num < arr_string length/size
  just_string += just string
  string_num += 1

PRINT just_string
END

3. a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. For instance: everyOther([1,4,7,2,5]) # => [1,7,5]
START
GET arr_int = array of integers
SET num_int = 0 
SET new_arr = empty array
WHILE num_int < arr_int
  IF num_int is even
    push value to new_arr
  ELSE
    next
  
  num_int += 1 

PRINT new_arr
END

4. a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.
START
GET string
GET character
SET occ = 0 
SET iterator = 0
WHILE iterator < string size/length
  IF string[iterator] == character
    occ += 1
  IF occ = 3
    PRINT index of string

END

5. a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. For instance: merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
START
GET arr_1 = first array
GET arr_2 = second array
SET new_arr = empty array
SET iterator = 0
WHILE iterator < arr_1 size + arr_2 size
  IF index of new_array is even
    push in arr_1
  IF index of new_array is odd
    push in arr_2

PRINT new_array
END
