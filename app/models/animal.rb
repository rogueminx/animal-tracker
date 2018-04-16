class Animal < ActiveRecord::Base
  has_many :sightings
  validates :kind, :presence => true
end
