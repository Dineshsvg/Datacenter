class CreateDatacentters < ActiveRecord::Migration
  def self.up
    create_table :datacentters do |t|
      t.string :code
      t.string :server_available
      t.string :server_capacity
      t.integer :country_id

      t.timestamps
    end
  end

  def self.down
    drop_table :datacentters
  end
end
