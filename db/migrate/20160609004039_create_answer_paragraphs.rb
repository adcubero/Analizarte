class CreateAnswerParagraphs < ActiveRecord::Migration
  def change
    create_table :answer_paragraphs do |t|
      t.belongs_to :option, index: true, foreign_key: true
      t.belongs_to :evaluation, index: true, foreign_key: true
      t.belongs_to :sentence, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
