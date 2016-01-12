class ClientsController < ApplicationController

	def index
		@shelter = Shelter.find(params[:shelter_id])
		@clients = @shelter.clients.all
	end

	def show
		@shelter = Shelter.find(params[:shelter_id])
		@client = @shelter.clients.find(params[:id])
	end

	def edit
		@shelter = Shelter.find(params[:shelter_id])
		@client = @shelter.clients.find(params[:id])
	end

	def update
		@client = Client.find(params[:id])
		if @client.update(client_params)
			redirect_to shelter_client_path
		end
	end

	def new
		@shelter = Shelter.find(params[:shelter_id])
		@client = @shelter.clients.new
	end

	def create
		@shelter = Shelter.find(params[:shelter_id])
		@client = @shelter.clients.new(client_params)
		if @client.save
			redirect_to shelter_clients_path
		end
	end

	private

	def client_params
		params.require(:client).permit(:name,:age,:shelter_id)
	end
	
end