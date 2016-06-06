
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

	def get_firehouses
	response = HTTParty.get('https://data.cityofnewyork.us/resource/hc8x-tcnd.json')
	puts response.body
	end
end

