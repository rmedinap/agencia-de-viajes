class Country < ActiveRecord::Base
  has_many :country_pictures
  has_many :travels
  belongs_to :destination

  extend FriendlyId
  friendly_id :name, :use => :slugged
end
