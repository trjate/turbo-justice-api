class GeneralHealthAndActivity < ActiveRecord::Base
  belongs_to :user

  def add_general_health_and_activity_data!(params)

     self.update(

     overall_physical_health?:
     params[:overall_physical_health?],

     overall_mental_health?:
     params[:overall_mental_health?],

     trouble_remembering_things?:
     params[:trouble_remembering_things?],

     memory_compared_to_decade_ago?:
     params[:memory_compared_to_decade_ago?],

     average_number_of_alcoholic_drinks_each_week_over_past_year?:
     params[:average_number_of_alcoholic_drinks_each_week_over_past_year?],

     ever_smoked_cigarettes_regularly?:
     params[:ever_smoked_cigarettes_regularly?],

     currently_smoke?:
     params[:currently_smoke?],

     typical_bedtime?:
     params[:typical_bedtime],

     typical_waketime?:
     params[:typical_waketime?],

     typical_sleeptime?:
     params[:typical_sleeptime?])

  end
end
