class AddAdToPoints < ActiveRecord::Migration
  def change
    add_column :points, :ad_start, :decimal
    add_column :points, :ad_duration, :decimal
    add_column :points, :ad_url, :string
  end
end
