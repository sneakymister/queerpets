class AddAnimalToClients < ActiveRecord::Migration
  def change
    remove_reference :clients, :animal
  end
end
