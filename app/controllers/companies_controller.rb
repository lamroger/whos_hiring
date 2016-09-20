class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end
  
  def show
    @company = Company.friendly.find_by(name: params[:name])
  end
end
