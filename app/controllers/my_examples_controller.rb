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
    all_lyrics = ""
    number = 99
    99.times do
      lyric = "#{number} bottles of beer on the wall"
      number -= 1
      all_lyrics += lyric
    end
    render json: {lyrics: all_lyrics}
  end

end
