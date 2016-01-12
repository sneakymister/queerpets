class AddAnimalToShelters < ActiveRecord::Migration
  def change
    add_reference :shelters, :animal, index: true, foreign_key: true
  end
end
