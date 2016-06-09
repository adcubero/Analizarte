class Option < ActiveRecord::Base
  belongs_to :sentence
  has_many :answer_paragraphs
end
