class EmployeesController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @employee = @company.employees.new
  end

  def create
    @company = Company.find(params[:company_id])
    @employee = @company.employees.new(employee_params)

    if @employee.save
      redirect_to companies_path, flash: { success: "Employee added!" }
    else
      render :new
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:name)
  end
end
