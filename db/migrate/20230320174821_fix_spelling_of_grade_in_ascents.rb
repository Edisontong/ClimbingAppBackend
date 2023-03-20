class FixSpellingOfGradeInAscents < ActiveRecord::Migration[7.0]
  def change
    remove_column :ascents, :grate, :string
    add_column :ascents, :grade, :string
  end
end
