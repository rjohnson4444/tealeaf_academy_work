# Pieces of info we need to know
# - the loan amount
# - the APR
# - the loan duration
# What we need to calculate
# - monthly interest rate
# - loan duration in months
def prompt(message)
	puts "=> #{message}"
end
prompt "Welcome to the Mortgage Calculator"

loop do
	prompt "Please enter the mortgage amount (in dollars)."

	loan_amount = ''
	loop do
		loan_amount = gets.chomp

		if loan_amount.empty? || loan_amount.to_f <= 0
			puts "Oops! That's not a valid amount. Please enter the loan amount again."
		else
			break
		end
	end

	apr = ''
	loop do
		prompt "Please enter the APR on the mortgage loan."
		apr = gets.chomp.to_f / 100

		if apr.to_s.empty? || apr <= 0
			puts "Oops! That's not a valid APR. Please enter it again."
		else
			break
		end
	end

	loan_length = ''
	loop do
		prompt "Please enter the duration of the loan (in years)."
		loan_length = gets.chomp

		if loan_length.empty? || loan_length.to_f <= 0
			puts "Oops! That's not a valid entry. Please enther the length of the loan again."
		else
			break
		end
	end

	monthly_interest_rate = apr / 12
	loan_in_months = loan_length.to_i * 12

  monthly_payment = loan_amount.to_f() *
                  (monthly_interest_rate /
                  (1 - (1 + monthly_interest_rate)**-loan_in_months.to_i()))

	prompt "Your monthly mortgage payment is $#{format('%02.2f', monthly_payment)} for #{loan_in_months} months."

	prompt "Do you want to calculate another mortgage? (Y for yes)"
	answer = gets.chomp

	break unless answer.downcase.start_with?('y')
end

prompt "Thanks for using the Mortgage Calculator!"
