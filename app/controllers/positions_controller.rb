class PositionsController < ApplicationController
  def show
    @positions = Position.all
  end
end
