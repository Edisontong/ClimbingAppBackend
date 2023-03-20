class FixRouteAndAscentAssociations < ActiveRecord::Migration[7.0]
  def change
    add_column :ascents, :route_id, :integer
    remove_column :routes, :ascent_id, :integer
  end
end
