class ChangeLengthToInteger < ActiveRecord::Migration
  def change
  	change_table :topics do |t|
  		t.change :length, :integer 
  	end 
  end
end
