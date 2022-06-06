# transpose_3x3.rb
# method that takes 3x3 matrix into an Array of Arrays format
# return the transpose of the original matrix.
# Do not use Array#transpose or the Matrix class 

def transpose(matrix)
  new_matrix = []
  3.times do |i|
    new_matrix[i] = [matrix[0][i], matrix[1][i], matrix[2][i]] 
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# LS Solution:
def transpose(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

# Other Result:
def transpose(matrix)
  matrix[0].zip(matrix[1], matrix[2])
end
