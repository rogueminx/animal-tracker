require 'rails_helper'

describe Animal do
  it { should validate_presence_of :kind }
  it { should have_many :sightings }
end
