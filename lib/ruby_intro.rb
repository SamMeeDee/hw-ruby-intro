require 'byebug'
# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum1 = 0;
  
  arr.each do
    |num|
    sum1+=num;
  end
  
  if arr.empty?
    return 0;
  end
  
  return sum1;
end


def max_2_sum arr
  sum = 0;
  
  arr.sort!;
  
  array_end = arr.length - 1;
  
  if arr.length > 1
    sum = arr[array_end] + arr[array_end-1]
    return sum;
  elsif arr.length == 1
    sum = arr[array_end]
    return sum;
  else
    return sum;
  end
end


def sum_to_n? arr, n
  # for i in 0...arr.length do
    
  #   for j in 1...arr.length do
      
  #     if (arr[j] + arr[i]) == n
  #       return true
  #     else
  #       return false
  #     end
  #   end
    
  # end
  
  hash = Hash.new
  arr.each do |val|
    if hash.key? val
  	return true
    else
  	hash[n-val] = val
    end
  end
  return false
end

# Part 2

def hello(name)
  return_value = "Hello, #{name}";
  
  return return_value;
end

def starts_with_consonant? s
  if (/[^aeiouAEIOU_\d\W]/=~s)==0
    return true
  else
    return false
  end
end


def binary_multiple_of_4? s
  if(s) == "0"
    return true
  end
  if /^[01]*(00)$/.match(s)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
attr_accessor :isbn
attr_accessor :price
    
def initialize (isbn, price)
    raise ArgumentError,
          "Illegal argument" if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
end
          
def price_as_string
  sprintf("$%2.2f", @price)
end
    
end