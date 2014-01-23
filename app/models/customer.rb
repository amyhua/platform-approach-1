class Customer < ActiveRecord::Base
	has_many :apps, through: :customer_apps
	has_many :customer_apps
	validates_uniqueness_of :slug
	
end
