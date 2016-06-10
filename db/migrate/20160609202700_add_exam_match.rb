class AddExamMatch < ActiveRecord::Migration
  def change
  	remove_column :matches, :belongs_to, :string
  	add_reference :matches, :exam, index: true, foreign_key: true
  end
end
