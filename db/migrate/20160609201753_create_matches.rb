class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :exam
      t.string :belongs_to
      t.string :option1
      t.string :option2

      t.timestamps null: false
    end
  end
end
