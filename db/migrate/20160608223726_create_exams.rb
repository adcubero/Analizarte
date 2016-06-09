class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.integer :age

      t.timestamps null: false
    end
  end
end
