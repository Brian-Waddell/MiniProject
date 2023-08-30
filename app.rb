require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  erb(:home_page)
end

get("/rock") do
 Player_moves = ["rock", "paper", "scissors"]

 @comp_moves = Player_moves.sample 

 if @comp_moves == "paper"
  @outcome = "We lost"
 elsif @comp_moves == "rock"
  @outcome = "We tied"
 else 
  @outcome = "We won"
 end
  erb(:rock)
end 
get("/paper") do
  
  moves = ["rock", "paper", "scissors"]

  @comp_moves = moves.sample 

  if @comp_moves == "paper"
    @result = "We tied "
  elsif @comp_moves == "rock"
    @result = "We won"
  else @result = "We lost"
  end 
  erb(:paper)
end

get("/scissors") do
  
  moves = ["rock", "paper", "scissors"]

  @comp_moves = moves.sample 

  if @comp_moves == "scissors"
    @result = "We tied "
  elsif @comp_moves == "paper"
    @result = "We won"
  else @result = "we lost"
  end 
  erb(:scissors)
end
