class HeroPowersController < ApplicationController
	def create
		hero = HeroPower.create!(hero_power_params)
		render json: hero.hero, serializer: HeroshowpowersSerializer
	end

	private
	def hero_power_params
		params.permit(:strength, :power_id, :hero_id)
	end
end
