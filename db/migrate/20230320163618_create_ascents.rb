class CreateAscents < ActiveRecord::Migration[7.0]
  def change
    create_table :ascents do |t|
      t.integer :user_id
      t.string :type
      t.string :grate
      t.string :date
      t.integer :attempts
      t.text :beta

      t.timestamps
    end
  end
end
