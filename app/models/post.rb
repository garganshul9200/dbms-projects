class Post < ApplicationRecord
	belongs_to :user

	#
	# VALIDATION
	#

	validates :title, presence: true
	has_rich_text :content # add rich_text


end