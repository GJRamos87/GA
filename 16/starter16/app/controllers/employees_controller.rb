class EmployeesController < ApplicationController
	def new
		@company = Company.find(params[:company_id]) 
		@employee = @company.employees.new
	end

	def create 
		employee_params = params.require(:employee).permit(:name)
		@company = Company.find(params[:company_id]) 
		@employee = @company.employees.new(employee_params)

		if @employee.save
			redirect_to companies_path, flash: { success: " Employee Added!"}
		else 
			render :new
		end

	end

end
