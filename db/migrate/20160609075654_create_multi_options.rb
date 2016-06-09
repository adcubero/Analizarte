class CreateMultiOptions < ActiveRecord::Migration
  def change
    create_table :multi_options do |t|
      t.string :option
      t.belongs_to :multiple_choice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
