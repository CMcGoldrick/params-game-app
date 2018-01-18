Rails.application.routes.draw do
  get '/query_games_url' => 'games#query_games_method'
  get '/guess_segment_params_url/:input_guess/:output_message'
end

