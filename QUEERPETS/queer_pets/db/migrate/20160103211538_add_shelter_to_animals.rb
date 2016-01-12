class AddShelterToAnimals < ActiveRecord::Migration
  def change
    add_reference :animals, :shelter, index: true, foreign_key: true
  end
end
