class Event < ActiveRecord::Base
	attr_accessible :date_time, :food, :location, :name
	acts_as_gmappable :process_geocoding => true, :validation => true, :check_process => false

	self.per_page = 3

	def gmaps4rails_address
  	"#{self.location}"
	end

	def gmaps4rails_infowindow
      "<h1>#{self.name}</h1> <p> <h3>#{self.food}</h3> <p> <h3>#{self.location}</h3>"
	end


	
end
