class AddGmapsData < ActiveRecord::Migration
  def up
  	add_column :events, :latitude,  :float #you can change the name, see wiki
	add_column :events, :longitude, :float #you can change the name, see wiki
	add_column :events, :gmaps, :boolean #not mandatory, see wiki
  end

  def down
  	drop_column :events, :latitude,  :float #you can change the name, see wiki
	drop_column :events, :longitude, :float #you can change the name, see wiki
	drop_column :events, :gmaps, :boolean #not mandatory, see wiki
  end
end
