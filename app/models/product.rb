class Product < ApplicationRecord

	#--------------------------------------------------
	# Validations
	#--------------------------------------------------
	validates :title, :description, :link, presence: true
	has_many :comments
end
