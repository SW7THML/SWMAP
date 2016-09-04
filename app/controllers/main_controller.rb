class MainController < ApplicationController
  def home
	@profiles = Profile.order(:seat_number => :desc).to_a
	[0, 5, 11, 60, 65, 71, 96, 97].each do | pillar |
		@profiles.insert(pillar, :pillar)
	end 
  end
end
