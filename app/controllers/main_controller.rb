class MainController < ApplicationController

  def index
    flash.now[:notice] = "Logged in successfully!"
    flash.now[:alert] = "Email and password required"
  end
  
end