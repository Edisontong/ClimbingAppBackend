class ChangeNameTypeForRoutesAndAscentsTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :routes, :type, :string
    add_column :routes, :discipline, :string
    remove_column :ascents, :type, :string
    add_column :ascents, :discipline, :string
  end
end
