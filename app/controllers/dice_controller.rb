class DiceController < ApplicationController
  def index
    render template: "game_views/index"
  end

  def roll
    # params = {"amount" => "2", "sides" => "6"}
    @num_of_dice = params.fetch("amount").to_i
    @sides = params.fetch("sides").to_i

    @my_rolls = []

    @num_of_dice.times do |roll|
      roll = rand(1..@sides)

      @my_rolls.push(roll)
    end

    render template: "game_views/rolls"
  end
end
