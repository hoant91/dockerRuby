class ApplicationController < ActionController::Base
	def hello
		render html: "WELLCOME TO DOCKER Auto build"
	end
end
