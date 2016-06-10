class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :email
      t.string :password
      t.string :name
      t.integer :age
      t.belongs_to :tutor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
