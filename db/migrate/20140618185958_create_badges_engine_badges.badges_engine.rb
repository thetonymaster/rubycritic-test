# This migration comes from badges_engine (originally 20140617153637)
class CreateBadgesEngineBadges < ActiveRecord::Migration
  def change
    create_table :badges_engine_badges do |t|
      t.string :name, unique: true
      t.string :image
      t.text :description
      t.integer :level
      t.string :award

      t.timestamps
    end
  end
end
