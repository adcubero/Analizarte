class Exam < ActiveRecord::Base
	has_many :paragrahs
	has_many :multiple_choices
	has_many :matches
end
