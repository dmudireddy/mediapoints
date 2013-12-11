class CreateVideoassets < ActiveRecord::Migration
  def change
    create_table :videoassets, {:id => false} do |t|
      t.integer :merlinid, :null => false

      t.timestamps
   
    end
    execute "ALTER TABLE videoassets ADD PRIMARY KEY (merlinid);"
    change_column :videoassets, :merlinid, :bigint
  end
end
