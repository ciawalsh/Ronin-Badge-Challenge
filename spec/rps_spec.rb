require 'rps'

describe RockPaperScissors do

	it "can make a random choice" do
		expect(["rock","paper","scissors"]).to include RockPaperScissors.random 
	end

	it "knows if there is a draw when given a rock and random returns rock" do
		allow(RockPaperScissors).to receive(:random).and_return "rock"
		expect(RockPaperScissors.play("rock")).to eq "draw"
	end

	it "knows that rock beats scissors" do
		allow(RockPaperScissors).to receive(:random).and_return "rock"
		expect(RockPaperScissors.play("scissors")).to eq "lose"
	end

	it "knows scissors beats paper" do
		allow(RockPaperScissors).to receive(:random).and_return "paper"
		expect(RockPaperScissors.play("scissors")).to eq "win"
	end

end
	
