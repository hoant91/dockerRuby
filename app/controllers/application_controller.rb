class ApplicationController < ActionController::Base
	def hello
		render html: "WELLCOME TO DOCKER"
	end
end
