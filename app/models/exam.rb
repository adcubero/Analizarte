class Exam < ActiveRecord::Base
	has_many :paragrahs
	has_many :multiple_choices
end
