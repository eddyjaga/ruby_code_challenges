=begin
    This problem involves finding the number of integers with a value greater than 5. In Ruby speak,
    you could put it like this: Given an array, could how many items are greater than 5.

    To solve this, begin by outlining the logic, then translating it into code. An array is collection of data.
    
    For example, 

    Array = [17, 7, 3, 6, 10, 1]

    First, you go through the entire array and ask if each number is greater than 5.

    You then create a "count" variable by checking if each number has a value higher than 5. If it is,
    you count it, and if not, you don't.
=end

array = [17, 7, 3, 6, 10, 1, 9, 20, 23, 4, 22]
count = 0

for i in array
    if i > 5
        count+=1
    end
end

puts "The numbers greater than 5 is: #{count}"