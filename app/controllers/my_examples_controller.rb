class MyExamplesController < ApplicationController
  def fortune_teller
    number = rand(1..3)

    if number == 1
      fortune = "You will be very rich"
    elsif number == 2
      fortune = "You will be very happy"
    elsif number == 3
      fortune = "You will find love"
    end
    render json: {item1: fortune}
  end

  def lottery_number
    lottery_winner = []
    6.times do
      number = rand(1..60)
      lottery_winner << number
    end
    render json: {winning_numbers: lottery_winner}
  end

  def song_lyrics
    lyrics = (
      x = 99
      98.times do
        p "#{x} bottles of beer on the wall, #{x} bottles of beer.
        Take one down and pass it around, #{x-1} bottles of beer on the wall."
        x = x - 1
      end

      p "1 bottle of beer on the wall, 1 bottle of beer.
      Take one down and pass it around, no more bottles of beer on the wall.
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall."
    )
    render json: {lyrics: lyrics}
  end

end
