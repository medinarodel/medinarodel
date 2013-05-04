class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.text :details
      t.string :ip
      t.string :url

      t.timestamps
    end
  end
end
