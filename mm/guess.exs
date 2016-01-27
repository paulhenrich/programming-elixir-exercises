require IEx

defmodule Chop do
  def guess(needle, low..high) do
    recur_guess(needle, low..high, midpoint(low..high))
  end

  def recur_guess(needle, _low..high, guess) when guess < needle do
    IO.puts "Guessing #{guess}. Too low."
    recur_guess(needle, guess..high, midpoint(guess..high))
  end

  def recur_guess(needle, low.._high, guess) when guess > needle do
    IO.puts "Guessing #{guess}. Too high."
    recur_guess(needle, low..guess, midpoint(low..guess))
  end

  def recur_guess(needle, _low.._high, guess) when guess == needle do
    IO.puts "It's #{guess}."
    guess
  end

  def midpoint(a..b) do
    div(b + a, 2)
  end
end
