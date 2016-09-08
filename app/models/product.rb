class Product < ApplicationRecord

	#--------------------------------------------------
	# Validations
	#--------------------------------------------------
	validates :title, :description, :link, presence: true
end
