class CreateParagrahs < ActiveRecord::Migration
  def change
    create_table :paragrahs do |t|
      t.belongs_to :exam, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
