class Animal < ActiveRecord::Base
  has_many :sightings
  validates :kind, :presence => true

  def self.sighted
    where(sighted: true)
  end

  def self.not_sighted
    where(sighted: false)
  end


end
