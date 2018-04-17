Animal.destroy_all

50.times do |index|
  Animal.create!(kind: Faker::Cat.breed)
end

p "Created #{Animal.count} animals"

# 500.times do |index|
#   @x = random.number
#   @y = random.number
#   Sighting.create!
# end
