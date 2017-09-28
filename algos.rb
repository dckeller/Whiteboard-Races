## Binary Search ##

# Iterative #

def binary_search(array, num)
  ## This is the array / loops starting point
  x = 0
  ## This is so the method knows how many times to iterate through the loop
  y = array[-1]

  while x <= y
    ## Find the middle starting point
    index = (x + y) / 2

    ## If the middle starting point matches the num return the num
    if array[index] == num
      puts "Here is your #{num}"

    ## Check if the number is less than the starting point
    elsif array[index] > num
      y = index -1

    ## Check if the number is greater than the starting point
    elsif array[index] < num
      x = start + 1

    ## Return if the num is not found
    else
      puts "not found"
    end
  end
end

# Recursive #

def recursive_binary_search(array, num)
  ## This is the arrays starting point
  x = 0

  ## This is the arrays end length
  y = array[-1]

  ## If the array is empty there is no number
  if array.length == 0
    puts "No #{num} found"
  else
    ## Find the middle starting point
    index = (x + y) / 2

    ## If the starting point is less than the number (Base Case)
    if array[index] < num

      ## Do this
      recursive_binary_search(array[index+1, y], num)
    else

      ## Do this
      recursive_binary_search(array[x, index-1], num)
    end
  end
end

## Fib Sequence ##


