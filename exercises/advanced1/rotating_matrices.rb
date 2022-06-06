# rotating_matrices.rb
# method that takes an arbitrary matrix and rotate it 90 degrees clockwise

def rotate90(matrix)
  rotate_matrix = []
  matrix[0].size.times do |i|
    new_row = []
    matrix.size.times do |j|
      new_row << matrix[matrix.size - j - 1][i]
    end
    rotate_matrix <<  new_row
  end
  rotate_matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

# LS Solution:
def rotate90(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map do |row_index|
      matrix[row_index][column_index]
    end
    result << new_row.reverse
  end
  result
end

# Other Solution:
def rotate90(matrix)
  first_row, *rest = matrix
  first_row.zip(*rest).map { |row| row.reverse }
end
