class Destination < ActiveRecord::Base
  has_many :destination_pictures
  has_many :countries
end
