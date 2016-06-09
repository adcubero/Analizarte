class Sentence < ActiveRecord::Base
  belongs_to :paragraph
  has_many :options
  has_many :answer_paragraphs
end
