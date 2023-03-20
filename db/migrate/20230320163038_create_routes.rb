class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.integer :area_id
      t.integer :ascent_id
      t.string :type
      t.string :grade
      t.string :name
      t.text :beta
      t.string :protection
      t.text :location
      t.string :image_url

      t.timestamps
    end
  end
end
