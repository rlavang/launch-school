# 1. what is != and where should you use it?
# != is the "not equal" boolean comarison operator. 
# It should be used to determine if two objects are not equal to each other.

# 2. put ! before something, like !user_name
# is used to turn any object into their opposite boolean value.

#3. put ! after something, like words.uniq!
# Commonly put after a method name where the caller is mutated. 

#4. put ? before something
# Used in a ternary operator logic. Simplies an if..else statement. Formatted as
#"(condition) ? (true return value) : (false return value)" 

#5. put ? after something
# Used after a method name by convention when it will return
# a boolean value.

# 6. put !! before something, like !!user_name
# Returns the true boolean value equivalent of an object.