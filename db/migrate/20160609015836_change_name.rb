class ChangeName < ActiveRecord::Migration
  def change
  	rename_column :sentences, :paragraph_id, :paragrah_id
  end
end
