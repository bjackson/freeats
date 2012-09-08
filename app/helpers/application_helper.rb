module ApplicationHelper

	def featured_three
		#upcoming_three = Event.where(:date_time => 2.weeks.from_now)
		upcoming_three = events_within_two_weeks.limit(3)
	end

	def events_within_two_weeks
		Event.all(:conditions => {
			:date_time => 2.weeks.from_now.beggining_of_day..2.weeks.from_now.end_of_day
			})
	end
end
