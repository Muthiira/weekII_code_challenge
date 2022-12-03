class ApplicationController < ActionController::API
	skip_before_action :verify_authenticity_token
	rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_method

	def unprocessable_entity_method e
		render json: {errors: [e.record.errors.full_messages]}, status: :unprocessable_entity
	  end
	
end
