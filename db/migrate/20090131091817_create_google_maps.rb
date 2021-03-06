class CreateGoogleMaps < ActiveRecord::Migration
  def self.up
    create_table :google_maps do |t|
      t.string :name, :null => false
      t.string :description
      t.column "center", :point, :null => false, :srid => 4326, :with_z => false # 4326: WSG84
      t.integer :zoom
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :created_by_id
      t.integer :updated_by_id
    end
  end

  def self.down
    drop_table :google_maps
  end
end

