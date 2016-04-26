# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum = 0
arr.each { |a| sum+=a }
return sum
end

def max_2_sum arr
   
   large=0
   large2=0
   count=2
   if arr.length==0 then
       return 0
    elsif arr.length==1 then
       return arr.at(0)
   else
       large=(arr.at(0)>arr.at(1))?arr.at(0):arr.at(1)
       large2=(arr.at(0)>arr.at(1))?arr.at(1):arr.at(0)
   end
       
   while count<arr.length do
     
       if arr.at(count)>large then
         large2=large
         large=arr.at(count)
        elsif arr.at(count)>large2 then
         large2=arr.at(count)
        
       end 
       
     count=count+1
   end
   
   return large+large2  
   
end

def sum_to_n? arr, n
 if arr.length==0 || arr.length==1 then
     return false
 end
 
 for i in 0..(arr.length-1) 
    for j in (i+1)..(arr.length-1)
    if arr.at(i)+arr.at(j)==n then
        return true
    end
    end
end
return false
 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
