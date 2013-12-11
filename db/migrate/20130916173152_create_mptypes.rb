class CreateMptypes < ActiveRecord::Migration
  def change
    create_table :mptypes do |t|
      t.string :mptype

      t.timestamps
    end
  end
end
