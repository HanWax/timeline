	include Math

	R = 6367.45  # radius of the Earth, in kilometers

	def deg2rad(lat, lon) # converts degrees to radians
	  [lat * PI / 180, lon * PI / 180]
	end
	 
	def distance_between(lat1, lon1, lat2, lon2)
	  radlat1, radlon1 = deg2rad(lat1, lon1)
	  radlat2, radlon2 = deg2rad(lat2, lon2)
	  2 * R * asin(sqrt(sin((radlat2-radlat1)/2)**2 + cos(radlat1) * cos(radlat2) * sin((radlon2 - radlon1)/2)**2)) # Haversine formula
	end

	def time_between(time1, time2)
		(time2 - time1).abs
	end

	def outer_limit
		0.2
	end

	def inner_limit
		0.02
	end
