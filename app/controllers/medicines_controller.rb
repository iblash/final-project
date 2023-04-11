class MedicinesController < ApplicationController

  def create
    render({ :template => "medicine_templates/create.html.erb"})
  end

end
