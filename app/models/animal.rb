class Animal < ActiveRecord::Base
  validates :kind, :presence => true
end
