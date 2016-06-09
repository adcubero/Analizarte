class Paragrah < ActiveRecord::Base
  belongs_to :exam
  has_many :sentences
end
