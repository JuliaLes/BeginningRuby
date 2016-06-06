require 'httparty'

class Firestation
	attr_accessor :facilityaddress 
	attr_accessor :facilityname 
	attr_accessor :borough

	def initialize hash
		self.facilityaddress = hash['facilityaddress']
		self.facilityname = hash['facilityname']
		self.borough = hash['borough']
	end

	def self.fireStations query = nil
		station_list = []
		url = 'https://data.cityofnewyork.us/resource/hc8x-tcnd.json'
		if query != nil
           url = url + '?' + query
        end
        stations = HTTParty.get(url)
        stations.each do |station|
           station_list << FireStation.new(station)
        end
        station_list
    end

    def to_script
    	puts "This station is called #{facilityname} it is in #{borough}"
  	end

	def get_firehouses
		response = HTTParty.get('https://data.cityofnewyork.us/resource/hc8x-tcnd.json')
		puts response.body
	end
end
