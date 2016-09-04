class MainController < ApplicationController
  def home
  	@highlights = if params[:query].blank?
    	[]
    else
    	Profile.search(params[:query])
    end

	@profiles = Profile.order(:seat_number => :desc).to_a
	[0, 5, 11, 60, 65, 71, 96, 97].each do | pillar |
		@profiles.insert(pillar, :pillar)
	end
  end
end
