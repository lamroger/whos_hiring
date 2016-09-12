class PositionsController < ApplicationController
  def show
    @positions = Position.all

    puts @positions
  end
end
