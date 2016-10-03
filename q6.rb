# Implement question 5 again in Ruby in two ways:
# a. Using a loop
# b. Using recursion
# Benchmark the two solutions (include your code for the benchmarking). Which one of your solutions is faster?
#
# function even(n) {
# 	for (i=0; i < n*2; i++) {
# 		if (i%2 === 0) {
# 			console.log(i);
# 		}
# 	}
# }
#
# even(10);
########################################WITHOUT RECURSION
def even(n)
  for i in (0..n*2-1)
    if (i%2 == 0)
      puts i
    end
  end
end

################################       BROKEN RECURSION BELOW      ####################3#########33
# def even(n)
#     array = []
#     # return if array.length is equal to n
#     return if (array.length.to_i)==n
#     if (array.length.to_i)%2==0
#       array << n
#     end
#     even((array.length.to_i)+1)
# end

# def even(n)
#     array = []    # return if array.length is equal to n
#     if array.size == n
#       0
#     else (array.size).even?
#       array << n
#     end
#     even(array.size+1)
# end

even(3)
