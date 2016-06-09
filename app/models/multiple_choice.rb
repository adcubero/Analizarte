class MultipleChoice < ActiveRecord::Base
  belongs_to :exam
  has_many :multi_options
end
