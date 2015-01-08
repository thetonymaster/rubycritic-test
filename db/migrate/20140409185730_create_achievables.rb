class CreateAchievables < ActiveRecord::Migration
  def change
    create_table :achievables do |t|
      t.string :name
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
