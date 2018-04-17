Animal.destroy_all
Sighting.destroy_all

50.times do |i|
  @sighted = Faker::Boolean.boolean(0.5)
  Animal.create!(kind: Faker::Cat.breed, sighted: @sighted)
  @animal_id = Animal.last.id
  if @sighted == true
    10.times do |i|
      @date = Faker::Date.between(10.days.ago, Date.today)
      @x = Faker::Number.decimal(2, 3)
      @y = Faker::Number.decimal(2, 3)
      Sighting.create!(animal_id: @animal_id, date: @date, lat_lng: "#{@x} , #{@y}")
    end
  end
end


p "Created #{Animal.count} animals"
p "Created #{Sighting.count} sightings"
