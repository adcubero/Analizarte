class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :email
      t.string :password
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
