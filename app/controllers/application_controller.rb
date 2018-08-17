class ApplicationController < ActionController::Base
	def hello
		render html: "WELLCOME TO DOCKER 123"
	end
end
