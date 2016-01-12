class AnimalsController < ApplicationController

	def index
		@shelter = Shelter.find(params[:shelter_id])
		@animals = @shelter.animals
	end

	def show
		@animal = Animal.find(params[:id])
	end

	def new
		@shelter = Shelter.find(params[:shelter_id])
		@animal = @shelter.animals.new
	end

	def create
		@shelter = Shelter.find(params[:shelter_id])
		@animal = @shelter.animals.new(animal_params)
		if @animal.save
			redirect_to shelter_path(@shelter)
		end
	end

	def adopt
		@shelter = Shelter.find(params[:shelter_id])
		@animal = @shelter.animals.find(params[:id])
	end

	def update
		@shelter = Shelter.find(params[:shelter_id])
		@animal = @shelter.animals.find(params[:id])
		if @animal.update(adoption_params)
			redirect_to shelter_path
		end
	end

	private

	def adoption_params
		params.require(:animal).permit(:client_id)
	end

end