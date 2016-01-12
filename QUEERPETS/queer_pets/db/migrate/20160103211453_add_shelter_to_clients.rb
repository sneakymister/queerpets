class AddShelterToClients < ActiveRecord::Migration
  def change
    add_reference :clients, :shelter, index: true, foreign_key: true
  end
end
