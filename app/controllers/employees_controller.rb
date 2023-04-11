class EmployeesController < ApplicationController
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
  Add a route for the EmployeesController in config/routes.rb:
  
  ruby
  Copy code
  resources :employees, only: [:new, :create]
  Start the Rails server:
  
  Copy code
  rails server
  Visit http://localhost:3000/employees/new in your web browser to view the form and submit data.
  
  That's it! You should now have a working form with name, address, phone, position, and specialty fields that saves data to a database using Ruby on Rails.
  
  
end
