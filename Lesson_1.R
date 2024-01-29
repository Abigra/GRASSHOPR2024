#Lesson 1: Getting to know R and building your first model

#Part I: Introduction to R

## The basics ##

#we can use r to perform mathematical operations like addition, subtraction, multiplication, and division
#this can be done by simply typing our numbers and operations. They will be printed in the console.

2 + 2 

2 - 2

2 * 2

2 / 2


#variables are basically pieces of data that we can save and name for easier recall

answer <- 2 + 2 
print(answer)

my_name <- "Abby"

#vectors are a series of data that can all be stored together

numbers <- c(1, 2, 3, 4, 5)
print(numbers)

class_roster <- c("Abby", "Andrew", "Amlan", "Ling-Wei", "Lucas")
print(class_roster)


##What is a function?##

# A function is a method of being able to repeat the same operations within your code 
#repeatedly without having to continuously type them out every time. 
#R has lots of great preset functions that can be very helpful

#one that we have been using a lot already is the print function
print("Hello World")

#we can also use the function "length" to determine the length of a vector
length(class_roster)

#there are plenty of statistical functions that are useful for finding measures of center
#or other features of our data that we may be interested in

mean(numbers)
median(numbers)
max(numbers)
min(numbers)

#Sometimes, we need a more custom function to fit our needs.For example, 
#if we need to find 3x + 5 for a series of numbers, it is better to write a function to 
#perform this task instead of writing out 3(1)+5, 3(2)+5, 3(3) + 5... etc
#In this case, we can create our OWN function that carries out the operations we need

#Functions pass data called a parameter through them, which is basically your input. 
#A function will return data called a result once it has run the prescribed operations dictated in the function

#To create a function, we will use the "function()" keyword. The operations will be nested within 
#brackets {}. Functions can print the results of the function as an argument of that function
#or you can use the print function to see your result
#Below we will create a simple function that prints the input name
print_name_function <- function(first_name){
  print(first_name)
  return(first_name)
}

#This function may seem simple, but it can be very useful for more complicated actions
#Lets now write a function that multiples an input "x" by a chosen number "y" and adds "z"

math_function <- function (x,y,z){
  output <- x * y 
  output <- output + z
  return (output) 
}

print(math_function(1,2,3))
print(math_function(2,3,4))

#one of the most useful tools computer programs give us access too are those used to visualize data.
#In R, we can create really beautiful and useful graphs very easily using the built in plot() function.
plot(numbers)
# We also have the ability to customize plots colors, shapes, point sizes, and more

#INSERT PLOT HERE

#Part II: Building our first model: Personal Finance 

#Lets build a function that allows us to project our account balance for a given interest rate over 5 years.
#We will be using simple interest to complete this function

simple_interest_fun <- function(principal, interest_rate, years){
  balance <- principal * interest_rate * years
  return(balance)
}

simple_interest <- simple_interest_fun(1000, 5, 5)
print(simple_interest)

#lets build a similar function but this time using compound interest

compound_interest_fun <- function(principal, interest_rate, years){
  balance <- principal * ((1 +interest_rate)^years)
  return(balance)
}

compound_interest <- compound_interest_fun(1000, 5, 5) 
print(compound_interest)
