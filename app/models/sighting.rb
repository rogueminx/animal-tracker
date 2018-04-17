class Sighting < ActiveRecord::Base
  belongs_to :animal
  validates :date, :presence => true

  scope :recent_sightings, -> {where("date >=?", Time.now.beginning_of_day)}
  def self.current_sightings
    where(date: Time.now.beginning_of_day)
  end

end
