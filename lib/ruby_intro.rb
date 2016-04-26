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
  puts("Hello, "+name)
  return "Hello, "+name
end

def starts_with_consonant? s
    if s.length==0 then
        return false
    end
    if s[0]<'A'||(s[0]>'Z'&&s[0]<'a')||s[0]>'z' then
        return false
    end
  if s[0]=='a'||s[0]=='A'||s[0]=='e'||s[0]=='E'||s[0]=='i'||s[0]=='I'||s[0]=='o'||s[0]=='O'||s[0]=='u'||s[0]=='U' then
      return false
  else
      return true
  end
end

def binary_multiple_of_4? s
    
    if s=="0" then
        return true
    end
 for i in 0..(s.length-1)
    
    if s[i]!='0' && s[i]!='1' then
        
        return false
    end
end

if s[s.length-2]=='0'&&s[s.length-1]=='0' then
    
    return true
else
    return false
end
end

# Part 3

class BookInStock
    
    
    def initialize(isbn,price)
        @isbn=isbn
        @price=price
        raise ArgumentError, "ArgumentError" if isbn=="" || price<=0
    end
    
    def isbn
        @isbn
    end
    
     def isbn= (isbn)
        @isbn=isbn
    end
    
     def price
        @price
    end
    
     def price= (input)
        @price=input
    end
    
    def price_as_string
        return "$"+format("%.2f",@price).to_s
    end
end
