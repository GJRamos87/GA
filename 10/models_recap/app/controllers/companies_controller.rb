class CompaniesController < ApplicationController
  def index
  	@companies = Company.all
  end

  def search 
  	@result = "nothing yet"
  end

end
