VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
	Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') || 
    (first == 'paper' && second == 'rock') || 
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
		prompt("You won! Yay!")
	elsif win?(computer, player)
			prompt("Sorry, you lost!")
	else
			prompt("You tied!")
	end
end

loop do # Main Loop

	choice = ''
	loop do
		prompt("Choose one: #{VALID_CHOICES.join(', ')}")
		choice = gets().chomp().downcase()

		if VALID_CHOICES.include?(choice)
			break
		else
			prompt("Please pick either rock, paper, or scissors.")
		end
	end

	computer_choice = VALID_CHOICES.sample

	Kernel.puts("You chose: #{choice}, the computer chose: #{computer_choice}.")

	display_results(choice, computer_choice)

	prompt("Do you want to play again? (Y for yes)")
	answer = Kernel.gets().chomp()

	break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing Rock, Paper, Scissors!")
prompt("Goodbye!")

