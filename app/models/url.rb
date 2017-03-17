class Url < ApplicationRecord

	validates :long_url, :presence => true , :format => {:with => /((?:https?\:\/\/|www\.)(?:[-a-z0-9]+\.)*[-a-z0-9]+.*)/i }#URI::regexp(["http", "https"]) #%w(http https)

	def shorten
		 self.short_url = SecureRandom.hex(3)
	end	
end
