require 'sinatra'


get '/' do
	@direction = ["Let's Play Monopoly!",
	"Choose your token",
	"hat",
	"diamond"]
	erb :index
end

get '/direction/:choice' do
	case params[:choice]
	when "hat"
			@direction = ["Landed on Kings Cross Station", "Would you like to buy or save your money?",
			"buy", "save"]
			erb :index
	when "buy"
			@direction = ["Landed on Kings Cross Station",
			"Would you like to buy or save your money?",
			"buy",
			"save" ]
			erb :index
	when "diamond"
		@ending =["You Lose", "A Diamond is not a token! " ]
		erb :ending
	end
		
end




