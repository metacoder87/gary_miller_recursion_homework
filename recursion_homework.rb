# Recursion Homework
# For tonight's exercises, we are going to write several recursive functions. 
# Here's how you should approach each problem: 1. Read the problem statement to 
# make sure you fully understand the problem 2. Identify the base case(s) 3. 
#   Determine the inductive step 4. Write the function 5. Run the provided test 
#   cases to verify you have a working solution

# As we learn recursion, it is important that we break down each problem into 
# these steps. Doing so will help us devise solutions and avoid stack overflow 
# errors.

# If you encounter strange bugs or errors, use byebug!

# Exercise 1 - sum_to
# Write a function sum_to(n) that uses recursion to calculate the sum from 
# 1 to n (inclusive of n).

  def sum_to(n)
    n > 1 ? n + sum_to(n - 1) : n < 1 ? [].first : 1
  end

#   # Test Cases
  puts sum_to(5)  # => returns 15
  puts sum_to(1)  # => returns 1
  puts sum_to(9)  # => returns 45
  puts sum_to(-8)  # => returns nil


# Exercise 2 - add_numbers
# Write a function add_numbers(nums_array) that takes in an array of Integers 
# and returns the sum of those numbers. Write this method recursively.

  def add_numbers(num_array)
    num_array.count > 1 ? num_array.first + add_numbers(num_array.drop(1)) : num_array.first
  end

#   # Test Cases
  puts add_numbers([1,2,3,4]) # => returns 10
  puts add_numbers([3]) # => returns 3
  puts add_numbers([-80,34,7]) # => returns -39
  puts add_numbers([]) # => returns nil


# Exercise 3 - Gamma Function
# Let's write a method that will solve Gamma Function recursively. 
# The Gamma Function is defined Γ(n) = (n-1)!.

  def gamma_fnc(n)
    n > 1 ? (n - 1) * gamma_fnc(n - 1) : n < 1 ? [].first : 1
  end

#   # Test Cases
  puts gamma_fnc(0)  # => returns nil
  puts gamma_fnc(1)  # => returns 1
  puts gamma_fnc(4)  # => returns 6
  puts gamma_fnc(8)  # => returns 5040


# Exercise 4 - Ice Cream Shop
# Write a function ice_cream_shop(flavors, favorite) that takes in an array of 
# ice cream flavors available at the ice cream shop, as well as the user's 
# favorite ice cream flavor. Recursively find out whether or not the shop offers 
# their favorite flavor.

  def ice_cream_shop(flavors, favorite)
    flavors.empty? ? false : flavors.first == favorite ? true : ice_cream_shop(flavors.drop(1), favorite)
  end

#   # Test Cases
  puts ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
  puts ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
  puts ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
  puts ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
  puts ice_cream_shop([], 'honey lavender')  # => returns false


# Exercise 5 - Reverse
# Write a function reverse(string) that takes in a string and returns it reversed.

  def reverse(string)
    string.length > 1 ? string[-1] + reverse(string[0...-1]) : string
  end

#   # Test Cases
  puts reverse("house") # => "esuoh"
  puts reverse("dog") # => "god"
  puts reverse("atom") # => "mota"
  puts reverse("q") # => "q"
  puts reverse("id") # => "di"
  puts reverse("") # => ""


            # meta_coder (Gary Miller) =)
            # gmiller052611@gmail.com
            # https://github.com/metacoder87/gary_miller_recursion_homework