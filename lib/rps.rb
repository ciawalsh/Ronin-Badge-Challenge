class RockPaperScissors
	
	RULES = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}

	def self.random
		["rock", "paper", "scissors"].sample
	end

	def self.play(choice)
		$comp_choice = random
		return "draw" if choice == $comp_choice	
		RULES[choice] == $comp_choice ? "win" : "lose"
	end

end