class UserSecretCodesController < ApplicationController
	def index
		@secret_code = UserSecretCode.all
	end

	def new
	end

	def edit
	end

	def create
		params[:number].to_i.times do
			random = ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(10).join
			UserSecretCode.create(secret_code: random)
	    end
	    redirect_to user_secret_codes_path
	end

	def update
	end
end
