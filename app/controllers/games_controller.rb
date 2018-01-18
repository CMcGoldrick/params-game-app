class GamesController < ApplicationController
  def query_games_method
    input_name = params[:input_name].upcase.split("")
 
      if input_name[0] == "C"
        var = "nice name!"
      else 
        var = "shitty name!"
      end

    render json: {name: input_name, output: var}
  end

  def guess_query_action
    winning_number = 42

    input_guess = params[:user_guess].to_i

    if input_guess > winning_number
      output_message = "Try Lower"
    elsif input_guess < winning_number
      output_message = "Go Higher"
    else
      output_message = "You Win!!!!"
    end

    render json: {guess: input_guess, message: output_message}
  end
end


