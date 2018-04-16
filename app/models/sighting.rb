class Sighting < ActiveRecord::Base
  belongs_to :animal
  validates :date, :presence => true
end
