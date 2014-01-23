class App < ActiveRecord::Base
	has_many :customers, through: :customer_apps
	has_many :customer_apps
	validates_uniqueness_of :slug

	def to_param
		self.slug
	end
end
