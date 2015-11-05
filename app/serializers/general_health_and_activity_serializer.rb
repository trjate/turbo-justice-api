class GeneralHealthAndActivitySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :overall_mental_health?, :trouble_remembering_things?, :memory_compared_to_decade_ago?,
             :average_number_of_alcoholic_drinks_each_week_over_past_year?, :ever_smoked_cigarettes_regularly?,
             :currently_smoke?, :typical_bedtime?, :typical_waketime?, :typical_sleeptime?, :user_id

end
