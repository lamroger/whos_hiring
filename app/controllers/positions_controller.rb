class PositionsController < ApplicationController
  def index
    @positions = Position.all
    @companies = Company.all
  end

  def show
    @position = Position.find(params[:id])
  end
end
