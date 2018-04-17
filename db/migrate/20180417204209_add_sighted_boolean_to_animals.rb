class AddSightedBooleanToAnimals < ActiveRecord::Migration[5.1]
  def change
    add_column :animals, :sighted, :boolean
  end
end
