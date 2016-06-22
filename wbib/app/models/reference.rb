class Reference < ActiveRecord::Base
def addhttp
	if not self.URL.include?("http://")
		self.URL = 'http://' + self.URL
	end
end

before_validation :addhttp

validates :URL, presence: true
validates :topic, presence: true
validates :annotation, presence: true
end
