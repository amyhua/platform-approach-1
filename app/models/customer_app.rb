class CustomerApp < ActiveRecord::Base
	belongs_to :app
	belongs_to :customer
	has_many :configurations

	def to_param
		self.slug
	end
end
