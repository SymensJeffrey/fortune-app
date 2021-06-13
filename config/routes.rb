Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "fortune", controller: "my_examples", action: "fortune_teller"
  get "lottery", controller: "my_examples", action: "lottery_number"
  get "99Bottles", controller: "my_examples", action: "song_lyrics"
end
