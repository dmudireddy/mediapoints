class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :videoasset_id
      t.integer :mptype_id
      t.string :img
      t.string :title
      t.string :artist
      t.decimal :price, :precision => 6, :scale => 4
      t.string :launchLink

      t.timestamps
    end
    change_column :points, :videoasset_id, :bigint
  end
end
