Dummy::Application.routes.draw do

    match "/action_one" => "home#action_one"
    match "/action_two" => "home#action_two"

end
