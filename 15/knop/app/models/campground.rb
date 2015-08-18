class Campground < ActiveRecord::Base
	validates :address, presence: true
	validates :site_count, numericality: true
end
