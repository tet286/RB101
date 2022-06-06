# transpose_mxn.rb
# modify the transpose method so it works with any matrix size (at least 1 row and 1 col)

def transpose(matrix)
  new_matrix = []
  matrix[0].size.times do |i|
    new_row = []
    matrix.size.times do |j|
      new_row << matrix[j][i]      
    end
    new_matrix << new_row
  end
  new_matrix
end


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

# LS Solution:
def transpose(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

# Other Solution:
def transpose(matrix)
  first_row, *other_rows = matrix
  first_row.zip(*other_rows)
end
