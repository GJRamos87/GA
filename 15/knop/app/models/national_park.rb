class NationalPark < ActiveRecord::Base
	validates :name, presence: true
	validates :year, numericality: true, allow_blank: true
end
