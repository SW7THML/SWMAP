class MainController < ApplicationController
	before_filter :enable_search

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
	
		#@profiles = @profiles.each_slice(24)

		@left = []
		@right = []

		@profiles.each_with_index do |profile, i|
			if i % 12 < 6
				@left << profile
			else
				@right << profile
			end
		end

		@left = @left.each_slice(12)
		@right = @right.each_slice(12)
  end
end
