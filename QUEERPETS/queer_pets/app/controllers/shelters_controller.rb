class SheltersController < ApplicationController

	def index
		@shelters = Shelter.all
	end

	def show
		@shelter = Shelter.find(params[:id])
		@animals = @shelter.animals
		@clients = @shelter.clients
	end

	def new
		@shelter = Shelter.new
	end

	def create
		@shelter = Shelter.new(shelter_params)
		if @shelter.save
			redirect_to root_path
		end
	end

	private

	def shelter_params
		params.require(:shelter).permit(:name)
	end

end