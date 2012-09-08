class Event < ActiveRecord::Base
  attr_accessible :date_time, :food, :location, :name

  acts_as_gmappable

  def gmaps4rails_address
  	"{self.location}"
  end
end
