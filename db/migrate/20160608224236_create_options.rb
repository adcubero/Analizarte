class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.belongs_to :sentence, index: true, foreign_key: true
      t.string :option
      t.string :correct

      t.timestamps null: false
    end
  end
end
