class AnswerParagraph < ActiveRecord::Base
  belongs_to :option
  belongs_to :evaluation
  belongs_to :sentence
end
