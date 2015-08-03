# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the results

Kernel.puts("Welcome to Calculator")

Kernel.puts("Please enter the first number")
number1 = Kernel.gets().chomp()

Kernel.puts("Please enter the second number")
number2 = Kernel.gets().chomp()

Kernel.puts("What type of opperation would you like to perform on these two numbers? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
	