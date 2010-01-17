class CreateStats < ActiveRecord::Migration
  def self.up
    create_table :stats do |t|
      t.integer :term_id
      t.string  :day
      t.integer :nb_occ
      t.timestamps
    end
  end

  def self.down
    drop_table :stats
  end
end
