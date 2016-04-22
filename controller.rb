require 'sinatra'


get '/' do
	@title = "Let's Play Monopoly!"
	@story = "Choose your token"
	@choice_a = "hat"
	@choice_b = "iron"
	erb :index
end

get '/direction/:choice' do
	case params[:choice]
	when "hat"
			@title = "Landed on Kings Cross Station"
			@story = "Would you like to buy or save your money?"
			@choice_a = "buy"
			@choice_b = "save"
			erb :index
	when "buy"
			@title = "Landed on Kings Cross Station"
			@story = "Would you like to buy or save your money?"
			@choice_a = "buy"
			@choice_b = "save"
			erb :index
	when "iron"
		@title = "You Lose"
		@ending = "Iron never wins"
		erb :ending
	end
		
end


