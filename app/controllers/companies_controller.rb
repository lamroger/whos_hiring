class CompaniesController < ApplicationController
  def show
    @companies = Company.all
  end
end
