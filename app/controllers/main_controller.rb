class MainController < ApplicationController
  def home
	@profiles = Profile.all	
  end
end
