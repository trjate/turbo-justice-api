class AddColumnsToGeneralHealthAndActivity < ActiveRecord::Migration
  def change
    add_column :general_health_and_activities, :overall_physical_health?, :string
    add_column :general_health_and_activities, :overall_mental_health?, :string
    add_column :general_health_and_activities, :trouble_remembering_things?, :string
    add_column :general_health_and_activities, :memory_compared_to_decade_ago?, :string
  end
end
