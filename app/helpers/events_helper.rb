module EventsHelper

	def featured_three
		#upcoming_three = Event.where(:date_time => 2.weeks.from_now)
		upcoming_three = events_within_two_weeks
	end

	def events_within_two_weeks
		firsts_events = Event.where(:date_time => 2.weeks.from_now..2.weeks.from_now)
		firsts_events.each do |evento|
		end
	end
	
end
