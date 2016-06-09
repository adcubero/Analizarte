class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.belongs_to :paragraph, index: true, foreign_key: true
      t.string :sentence

      t.timestamps null: false
    end
  end
end
