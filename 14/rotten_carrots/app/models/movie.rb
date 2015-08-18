class Movie < ActiveRecord::Base
	has_many :ratings
	has_many :reviews
end
