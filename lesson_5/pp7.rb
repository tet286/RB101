a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2 # a is unchanged
arr[1][0] -= a # b is now changed to [3,8]
arr[1] = [a,1] # b would be unchanged

p a
p b
