class CreateMultipleChoices < ActiveRecord::Migration
  def change
    create_table :multiple_choices do |t|
      t.string :question
      t.belongs_to :exam, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
