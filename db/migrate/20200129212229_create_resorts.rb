class CreateResorts < ActiveRecord::Migration[6.0]
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :link
      t.string :short_desc
      t.string :long_desc
      t.integer :price
      t.float :long
      t.float :lat
      t.string :zipcode
      t.string :region
      t.string :state
      t.date :open_date
      t.date :close_date
      t.integer :snowfall
      t.integer :vertical
      t.integer :summit
      t.integer :acres
      t.integer :runs
      t.integer :lifts
      t.integer :green
      t.integer :blue
      t.integer :black
      t.integer :double_black
      t.integer :terrain_parks
      t.boolean :epic
      t.boolean :ikon
      t.boolean :beginner
      t.timestamps
    end
  end
end