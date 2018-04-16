class CreateSightings < ActiveRecord::Migration[5.1]
  def change
    create_table :sightings do |t|
      t.column :animal_id, :integer
      t.column :date, :date
      t.column :lat_lng, :point # point is (x, y), e.g. two inputs for latitude and longitude 
    end
  end
end
