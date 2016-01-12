class AddClientToShelters < ActiveRecord::Migration
  def change
    add_reference :shelters, :client, index: true, foreign_key: true
  end
end
