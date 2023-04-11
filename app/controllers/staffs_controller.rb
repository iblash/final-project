class StaffsController < ApplicationController

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to root_path, notice: "Employee was successfully created."
    else
      render :new
    end
  end
  
  private
  
  def employee_params
    params.require(:employee).permit(:name, :address, :phone, :position, :specialty)
  end
  

end
