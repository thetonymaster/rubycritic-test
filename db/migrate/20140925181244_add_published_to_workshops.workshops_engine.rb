# This migration comes from workshops_engine (originally 20140925180233)
class AddPublishedToWorkshops < ActiveRecord::Migration
  def change
    add_column :workshops_engine_workshops, :is_published, :boolean,
               default: false
  end
end
