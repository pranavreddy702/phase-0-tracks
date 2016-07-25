def fib(num)
  array = [0,1]
  
  if num == 0
    nil
  elsif num == 1
    array[0]
  elsif num == 2
    array[1]
  elsif num != 0 && num != 1
    while array.length < num
      array << array[-1] + array[-2]
    end
  end
    
  array

#   if array[99] == 218922995834555169026
#    puts "number"
#   end
  
end

p fib(100)


number = [4, 1, 3, 5, 4, 11, 6, 16, 27, 3, 2, 15, 12, 7, 10 ]
# number.sort 

def bubble(array)
  # n is going to amount of the array
  n = array.length
  #loop through the array
  loop do
    swapped = false
# n starts at one and not zero

    (n-1).times do |i|

      # now n 9.times do i 
      if array[i] > array[i+1]

        # array0 greater then array1
        # if true do this
        array[i], array[i+1] = array[i+1], array[i]

        # swapped the number in the array
        swapped = true
        
        # now n is going to be put in the right order of the first two array
        # it will not stop until 9 times is done
      end
    end

    break if not swapped
  end