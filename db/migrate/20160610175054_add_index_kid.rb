class AddIndexKid < ActiveRecord::Migration
  def change
  	add_reference :evaluations, :kid, index: true, foreign_key: true
  end
end
