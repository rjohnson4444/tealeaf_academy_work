VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
	Kernel.puts("=> #{message}")
end

def display_results(player, computer)
	if (player == 'rock' && computer == 'scissors') || 
			(player == 'paper' && computer == 'rock') || 
			(player == 'scissors' && computer == 'paper')
		prompt("You won! Yay!")
	elsif (player == 'rock' && computer == 'paper') ||
				(player == 'paper' && computer == 'scissors') ||
				(player == 'scissors' && computer == 'rock')
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

