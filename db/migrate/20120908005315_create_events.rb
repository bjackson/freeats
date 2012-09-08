class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date_time
      t.text :food
      t.text :location

      t.timestamps
    end
  end
end
